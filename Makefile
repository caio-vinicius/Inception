FOLDERS := mariadb/ wordpress/
DATA := $(addprefix $(HOME)/data/, $(FOLDERS))

all: | $(DATA)
	docker-compose up

$(DATA):
	mkdir -p $(DATA)

clean:
	docker-compose rm

PHONY: all clean