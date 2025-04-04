# Cert Tool Runners

This repository contains **proof-of-concept** container images that run Red Hat
software certification tools in a specific way. These images are intended to be
executed against Red Hat Certification Partner Product Listings, leveraging a
generated Ansible Inventory.

> [!CAUTION]
> 
> - This utility is in **very early development**.
> - Users will assume all risk of using this tooling
> - This tool is not supported by Red Hat Support.
> - Every API exposed here is subject to change.

## Usage

### Image: Certify Containers

- Images are available at:
  [https://quay.io/opdev/certify-containers](https://quay.io/opdev/certify-containers).

- See [README.md](./images/certify-containers/README.md) for details on how to
  use this image.

- See
  [argument_specs.yaml](./images/certify-containers/runner/project/roles/certify_containers/meta/argument_specs.yaml)
  for details on how the the Ansible role is used.