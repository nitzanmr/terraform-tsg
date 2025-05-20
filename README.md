# terraform-tsg

This project provisions and manages an NGINX Docker container using Terraform and the docker provider.

## Project Structure

- `main.tf`: Defines Docker image and container resources.
- `providers.tf`: Configures the Docker provider.
- `variables.tf`: Declares input variables for image name, container name, and ports.
- `.terraform.lock.hcl`: Provider dependency lock file.
- `.gitignore`: Specifies files and directories to be ignored by git.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [Docker](https://docs.docker.com/get-docker/) running locally

## Usage

1. **Initialize Terraform:**
   ```sh
   terraform init
   ```

2. **Review the execution plan:**
   ```sh
   terraform plan
   ```

3. **Apply the configuration:**
   ```sh
   terraform apply
   ```

   This will pull the specified NGINX image and run a container exposing port 80.

4. **Destroy the resources:**
   ```sh
   terraform destroy
   ```

## Customization

You can customize the image, container name, and ports by editing `variables.tf`:

- `image_name`: Docker image to use (default: `nginx:1.27-alpine3.21`)
- `container_name`: Name for the Docker container (default: `nginx_container`)
- `container_ports`: Ports to expose (default: internal 80, external 80)
