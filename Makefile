ifneq (,$(wildcard ./.env))
    include .env
    export
endif

DOCKER_COMPOSE = env VIRTUAL_HOST=${VIRTUAL_HOST} docker-compose

run:
	$(DOCKER_COMPOSE) up -d

stop:
	$(DOCKER_COMPOSE) down

shell:
	$(DOCKER_COMPOSE) run --rm app bash

.PHONY: run stop shell
