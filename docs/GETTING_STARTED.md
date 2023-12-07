## 1. **Authentik Setup**
   ### Start the container
   - Navigate to the "authentik" directory.
   - Run `generate.env`
   - Run `docker-compose up -d`.
   ### Manual configuration
*These steps should guide you through the process of setting up OAuth2/OpenID providers for your applications.*

   - Visit `https://<authentik.server.name>/if/flow/inital-setup/` to create an admin account.
   - Add applications and providers through the **Applications => Providers** and **Applications => Applications** menus in the Admin interface.
   - Create OAuth2/OpenID providers for each application. Name them for easy identification, such as “nextcloud-oauth-provider”.
   - When creating the provider, choose the “default-authentication-flow” and the “default-provider-authorization-implicit-consent” authorization flow.
   - The redirect URL is usually supplied by the respective application for which the provider is being set up. However, it can be set to “.*” to allow for any redirect URL.
   - For signing key, use the default "authentik Self-signed Certificate"
   - Let Access Code/Token validity and Refresh token validity remain at default settings.
   - Make sure the default “email”, “openid”, and “profile” mappings er choosen in the “Scopes” section.
   - For Subject mode, choose “Based on the User’s username”.

Once you have providers set up for your applications, make sure to choose them as the “provider” in the application settings.

### 2. **Zulip Setup**
   - Navigate to the `docker-zulip-6.0.0` directory.
   - Copy the `.env-template` and fill out the values accordingly.
   - Run `docker-compose up -d`.
   - If you experience problems, check the error log by entering the container with `docker exec -it <container_name> bash` and then run `tail -F /var/log/zulip/errors.log`.

### 3. **NextCloud Setup**
   - Navigate to the MariaDB/PostgreSQL directory.
   - Run `docker-compose up -d`.
   - On first reaching the server, you will be prompted for admin account creation.
   - Install the "OpenID Connect user backend". This will add the OpenID Connect menu to the Administration panel.
   - Press the “+” to register a new provider and fill out info accordingly from your Authentik oauth2/openID provider.
   - Enable automatic user creation
   

Remember to replace placeholders like `<authentik.server.name>` and `<container_name>` with your actual values. This guide assumes that you have Docker and Docker Compose installed and configured on your system. Let me know if you need more detailed instructions or have any questions! 😊