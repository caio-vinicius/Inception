FOLDERS := mariadb/ wordpress/
DATA := $(addprefix $(HOME)/data/, $(FOLDERS))

all: | $(DATA)
	echo "127.0.0.1 lenzo-pe.42.fr" >> /etc/hosts
	docker-compose -f srcs/docker-compose.yml up

$(DATA):
	mkdir -p $(DATA)

clean:
	docker-compose rm

PHONY: all clean
