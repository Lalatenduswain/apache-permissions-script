# Setting Permissions for Apache in `/var/www/html/` and `/opt/lampp/htdocs/`

This repository contains a bash script that sets the appropriate ownership and permissions for files and directories in the `/var/www/html/` and `/opt/lampp/htdocs/` directories, making it suitable for the Apache web server and LAMPP environment.

## Purpose

The purpose of this script is to ensure that the files and directories within `/var/www/html/` and `/opt/lampp/htdocs/` have the correct ownership and permissions for the respective web server setups:

### For `/var/www/html/` (Apache)

- **Ownership:** `apache:apache`
- **Directories:** `750` (rwxr-x---)
- **Files:** `640` (rw-r-----)

### For `/opt/lampp/htdocs/` (LAMPP)

- **Ownership:** `daemon:webdev`
- **Directories:** `750` (rwxr-x---)
- **Files:** `640` (rw-r-----)

## Usage

1. Clone the repository or copy the contents of the bash script (`permissions_script.sh`) to your desired location.
2. git clone https://github.com/Lalatenduswain/apache-permissions-script.git


3. curl -sSL https://raw.githubusercontent.com/Lalatenduswain/apache-permissions-script/refs/heads/master/permissions_script.sh | bash

4. Make the script executable:
   ```bash
   chmod +x permissions_script.sh
   ```

5. Run the script with appropriate privileges:
   ```bash
   ./permissions_script.sh
   ```

   **Note:** Depending on your system configuration, you might need to use `sudo` or run the script as the root user to ensure sufficient permissions to modify the ownership and permissions.

## Disclaimer

Please use this script with caution and ensure that you understand the implications of modifying ownership and permissions on your system. Make sure to backup your files and directories before running this script.

## License

This repository is licensed under the [MIT License](LICENSE).
