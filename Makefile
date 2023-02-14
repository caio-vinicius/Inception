FOLDERS := mariadb/ wordpress/
DATA := $(addprefix $(HOME)/data/, $(FOLDERS))

all: | $(DATA)
    @sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep testuser.42.fr || \
    sudo echo "127.0.0.1 testuser.42.fr" >> /etc/hosts
	docker-compose -f srcs/docker-compose.yml up

$(DATA):
	mkdir -p $(DATA)

clean:
	docker-compose rm

PHONY: all clean
