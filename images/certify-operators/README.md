# Image: certify-operators

This container image runs the Preflight Operator certification policy against a
specially-crafted inventory representing Red Hat container components.

This image is designed to be used with
**[productctl](https://github.com/opdev/productctl)** in certifying multiple
container components associated with a Red Hat Certification Product Listing.

## Implementation

This project utilizes Ansible Runner to execute the corresponding
**certify_operators** role. It uses `/runner` as the ansible-runner base
directory. The directory structure contained within `/runner` aligns with
ansible-runner's expected directory structure, with two additions:

1. **/runner/cert-logs** will be used to store certification tooling logs.

2. **/runner/userfiles** will be used to store user-provided files referenced in
   the provided inventory.

Notably:

- The **/runner/inventory/inventory.yaml** must contain an inventory in the
  expected format. Most likely, this is expected to be generated on-the-fly by
  `productctl`.

- The **/runner/cert-logs** directory will contain logs from all certification
  runs. Unique subdirectories are created for you within the container at this
  path. If a user does not need the logs, this can be omitted.

## Example

```sh
podman run -it --rm 
  -v "${PWD}"/logs:/runner/cert-logs:Z \
  -v "${PWD}"/userfiles:/runner/userfiles:Z,ro \
  certify-operators
```

