# Terraform Interview Tips & Scenarios

## 🧠 Dependency & Deletion Order
**Interview Tip:**
> “Terraform tracks resource dependencies. So if I attempt to destroy a security group that’s still in use, AWS will return a `DependencyViolation` and Terraform will halt. That’s why it's best to destroy resources in dependency order or let Terraform resolve the graph automatically.”

## 🔧 SSH Security Group Issue
**Interview Tip:**
> “In one scenario, SSH failed and the error was a timeout. I traced it to missing port 22 in the security group configuration. I then updated the Terraform code and applied, which fixed it. This shows attention to security and IaC discipline.”

## 🛡 Configuration Drift
**Interview Tip:**
> “Configuration drift happens when changes are made outside Terraform (e.g. manually in AWS Console). Terraform plan will detect drift and we resolve it by updating code or reapplying desired config. Ensures consistency and state integrity.”

## 🔑 Git vs GitHub Context
**Interview Tip:**
> “Git is the local version control system; GitHub is a remote hosting platform. We stage, commit locally, then push to GitHub for collaboration and history tracking.”

## ⚠ Targeting & Resource Names
**Interview Tip:**
> “When using `terraform destroy -target=`, ensure you specify the correct full resource address. Use `terraform state list` to verify; targeting incorrectly causes errors.”

## 📦 Variables & Modules Flow
**Interview Tip:**
> “To feed variables into modules, define variables at root in `variables.tf` and assign them via `terraform.tfvars`. The root then passes them to sub-modules. Modules never read `.tfvars` directly.”

--- 

_Keep this file updated with new scenarios and questions as you progress!_
