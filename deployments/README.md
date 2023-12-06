## OS2ID Authentik test setup.
This repository aims to help setup a test deployment of the Django/Golang based open source IAM/SSO project [Authentik](https://github.com/goauthentik/authentik), alongside two connected Appliations [NextCloud](https://github.com/nextcloud) and [Zulip](https://github.com/zulip). This Readme is a work in progess and will act as a "Getting started" documentation. Through future commits we aim to make this documentaion even better and to cover more pitfalls.

### Authentik setup
To get started with Authentik cd into the "authentik" directory and start the containers by running `docker-compose up -d`.
This should boot 4 countainers, the worker, the server, a PostgreSQL DB and Redis. By default Authentik will listen on 9000/http and 9433/https. Authentik uses self-signed certs by default. It is recommended to use Nginx as a reverse proxy and proxy_pass to https://localhost:9443. It is not nescessary to use https when proxypassing to localhost, but Authentik makes it easy so one might as well.

Once the Authenik containers are running, you should be able to create and admin account, by visiting:

https://<authentik.server.name>/if/flow/inital-setup/

**If** this does not work, an alternate approach is to generate a recovery link for the admin user. This can be done by running:

`docker-compose run --rm server create_recovery_key 10 akadmin`

Once you have created an Admin user, you can add applications and providers through the **Applications => Providers** and **Applications => Applications** menues in the Admin interface. Setting up an application is relatively straight-forward. Applications need providers to enable authentication through Authentik. For now, it is recommended to create OAtuh2/OpenID providers for each application, and naming it something like "nextcloud-oauth-provider" for easy identification. When creating the provider, choose the "default-authentication-flow" and the "default-provider-authorization-implicit-consent" authorization flow. The redirect url is usually supplied by the respective application for which the provider is being set up, but this *can* be set to ".*" to allow for any redirect url. Use authentik's self-signed cert for signing, let Access Code/Token validity and Refresh token validity remain at default settings and choose the default "email", "openid" and "profile" mappings in the "Scope" section. For Subject mode, choose "Based on the User's username". Otherwise, all other defaults should be good!. Once you have providers setup for your applications, make sure to choose them as the "provider" in the application settings.

For easy testing, you can create a User (or simply use the Authentik admin user) for signing into your connected applications. Otherwise, you can create a user in the **Directory => Users** menu. Alternatively, you can setup federation in the **Directory => Federation and Social login** menu.

### Zulip setup.
Before running `docker-compose up -d` in the docker-zulip-6.0.0 directory, cp the .env-template and fill out the values accordingly. The EXTERNAL_HOST is the FQDN of the zulip server. The ADMIN_MAIL is the mail to which notifications regarding the zulip server is mailed (this will only work if the mail daemon is configured). The IDP_NAME is the internal name for the OIDC provider (example: "authentik"). The OIDC_WELL_KNOWN_URL can be copied from the Authentik oauth2/openID provider, be aware that zulip will append "/.well-known/openid-configuration" to the URL, so do not include this. The DISPLAY_NAME will be display when loggin into Zulip. If this is set to "Authentik", users will see "Login with Authentik" etc. Copy CLIENT_ID and SECRET from the provider in Authentik. As it stands right now, the realms and user needs to exists before users can log in with OIDC, but we will aim to fix this in future commits.

The Zulip server will listen on 80/443 HTTP/HTTPS. If you experience problems check the error log by first entering the container:

`docker exec -it <container_name> bash`

Then run:

`tail -F /var/log/zulip/errors.log`

### NextCloud setup.
CD into the MariaDB/PostgreSQL directory and run `docker-compose up -d`. On first reaching the server, you will be prompted for admin account creation. When you have created the Admin account, you must install the "OpenID Connect user backend" which will add the **OpenID Connect** menu to the **Administration** panel. Press the "+" to register a new provider and fill out info accordingly from your Authentik oauth2/openID provider. After the provider is registered you should be able to choose it as a login option when logging into NextCloud. You can enable automatic user creation if they do not exists already, which is recommended for this test setup.
