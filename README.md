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

### Image: Certify Helm Charts

- Images are available at:
  [https://quay.io/opdev/certify-helmcharts](https://quay.io/opdev/certify-helmcharts).

- See [README.md](./images/certify-helmcharts/README.md) for details on how to
  use this image.

- See
  [argument_specs.yaml](./images/certify-helmcharts/runner/project/roles/certify_helmcharts/meta/argument_specs.yaml)
  for details on how the the Ansible role is used.

### Image: Certify Operators

- Images are available at:
  [https://quay.io/opdev/certify-operators](https://quay.io/opdev/certify-operators).

- See [README.md](./images/certify-operators/README.md) for details on how to
  use this image.

- See
  [argument_specs.yaml](./images/certify-operators/runner/project/roles/certify_operators/meta/argument_specs.yaml)
  for details on how the the Ansible role is used.