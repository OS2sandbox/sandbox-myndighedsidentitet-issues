
### 1. **Authentik Setup**
   - Navigate to the "authentik" directory.
   - Run `generate.env` and `docker-compose up -d`.
   - Visit `https://<authentik.server.name>/if/flow/inital-setup/` to create an admin account.
   - Add applications and providers through the **Applications => Providers** and **Applications => Applications** menus in the Admin interface.

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