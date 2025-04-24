
# BUILD_DIR is where random build artifacts can be placed.
BUILD_DIR = build
IMAGE_REPO = quay.io/opdev

.PHONY: build_dir
build_dir:
	test -e $(BUILD_DIR) || mkdir $(BUILD_DIR)

.PHONY: clean
clean:
	rm --recursive --verbose $(BUILD_DIR)

# .PHONY: images
# images: image.certify-operators image.certify-containers image.certify-helmcharts

.PHONY: image.certify-containers
image.certify-containers:
	podman build \
		--tag $(IMAGE_REPO)/certify-containers \
		images/certify-containers

.PHONY: image.certify-helmcharts
image.certify-helmcharts:
	podman build \
		--tag $(IMAGE_REPO)/certify-helmcharts \
		images/certify-helmcharts

.PHONY: image.certify-operators
image.certify-operators:
	podman build \
		--tag $(IMAGE_REPO)/certify-operators \
		images/certify-operators

