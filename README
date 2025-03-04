# Documentation for Terraform Ephemeral Resources

This documentation demonstrates the use of Terraform ephemeral resources, specifically focusing on the write-only arguments introduced in version 1.11.0. The repository contains two examples:

1. **Not So Secret Pattern**: This pattern is commonly used and demonstrates how secrets can be generated, using the random string, and passed to an `aws_secretmanager` resource as a string.
This is less than ideal as this secret value is stored in Terraform State as plain text.
RBAC should be in place to prevent this being read.

2. **Very Secret Pattern**: This pattern utilizes ephemeral resources to handle highly sensitive data, ensuring that the information is not stored in the Terraform state file or exposed in any way.

### How it works
Terraform 1.10.0 introduced Ephemeral resources, which are designed to exist only during the Terraform apply operation and disappear afterward. Terraform achieves this by:

- **Opening access**: During terraform apply, Terraform materializes the resource, making its attributes available for interpolation and dependent resources.
- **Closing access**: Once the apply operation completes, Terraform automatically removes the resource from the state and destroys it, ensuring it doesn’t persist across runs.

### Usage
To use these patterns, ensure you are using Terraform version 1.11.0 or later. Follow the examples provided in the repository to implement the patterns in your own Terraform configurations.

Refer to the examples in the repository for detailed implementation and usage instructions.