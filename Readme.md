##**Terraform Azure Infrastructure**##


A foundational Infrastructure as Code (IaC) project to deploy a Resource Group, VNet, and Linux VM on Azure using Terraform. It is identical to the repository in https://github.com/nyyohannes/terraform-vm-vnet-subnet. The difference is that I used modules for this so that I could make my code a bit easier to change.


## Project Overview
This project provides the Terraform configuration needed to provision cloud infrastructure on Azure. It serves as a proof-of-concept for automating infrastructure deployment and destruction in a consistent and repeatable manner.

**Resources Provisioned**
 - Resource Group
 - Virtual Network
 - Subnets
 - Virtual NIC
 - Linux VM


## Prerequisites
Before running this project, ensure you have the following installed:
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux)


## How to Use

1. **Authenticate with Azure:**
   ```bash
   az login
   ```

2. **Download the Required Azure Provider Plugins**
    ```bash
    terraform init
    ```

3. **Confirm Configuration Doing What is Needed**
    ```bash
    terraform plan
    ```

4. **Deploy Infrastructure**
    ```bash
    terraform apply
    ```

5. **Destroy Infrastructure**
    ```bash
    terraform destroy
    ```
