.PHONY: build build-nc

.PHONY: help

help: ## This help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## This build docker image
	docker build -t simple-object-stroage .

build-nc: ## This build docker image without cache
	docker build -t simple-object-stroage . --no-cache

run: ## Start Docker Container
	docker run -it simple-object-stroage /bin/bash