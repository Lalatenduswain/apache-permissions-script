# Setting Permissions for Apache in /var/www/html/

This repository contains a bash script that sets the appropriate ownership and permissions for files and directories in the `/var/www/html/` directory, making it suitable for the Apache web server.

## Purpose

The purpose of this script is to ensure that the files and directories within `/var/www/html/` have the correct ownership and permissions for the Apache user. It sets the ownership to `apache:apache` and applies the following permissions:

- Directories: `750` (rwxr-x---)
- Files: `640` (rw-r-----)

## Usage

1. Clone the repository or copy the contents of the bash script to your desired location.

2. Make the script executable:
   ```bash
   chmod +x permissions_script.sh
   ```

3. Run the script with appropriate privileges:
   ```bash
   ./permissions_script.sh
   ```

   **Note:** Depending on your system configuration, you might need to use `sudo` or run the script as the root user to ensure sufficient permissions to modify the ownership and permissions.

## Disclaimer

Please use this script with caution and ensure that you understand the implications of modifying ownership and permissions on your system. Make sure to backup your files and directories before running this script.

## License

This repository is licensed under the [MIT License](LICENSE).
```

Feel free to modify the content as needed, and don't forget to include any additional information that you think would be relevant for your repository.
