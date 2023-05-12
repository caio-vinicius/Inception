LOGIN := lenzo-pe
HOST_NAME := $(LOGIN).42.fr

DOCKER_PATH := srcs/

FOLDERS := mariadb/ wordpress/
VOLUME := $(addprefix $(HOME)/$(LOGIN)/data/, $(FOLDERS))

all: | $(VOLUME)
	@sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep $(HOST_NAME) || \
	sudo echo "127.0.0.1 $(HOST_NAME)" >> /etc/hosts
	docker-compose -f $(DOCKER_PATH)docker-compose.yml up

d: | $(VOLUME)
	@sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep $(HOST_NAME) || \
	sudo echo "127.0.0.1 $(HOST_NAME)" >> /etc/hosts
	docker-compose -f $(DOCKER_PATH)docker-compose.yml up -d

ls:
	@docker-compose -f $(DOCKER_PATH)docker-compose.yml ps

volumes:
	docker volume ls

networks:
	docker networks ls

$(VOLUME):
	mkdir -p $(VOLUME)

clean:
	docker-compose -f $(DOCKER_PATH) rm

PHONY: all clean ls d volumes
