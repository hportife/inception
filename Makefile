NAME = inception

YMLSRC = docker-compose -f srcs/docker-compose.yml

all: prune reload

linux:
	@ echo "127.0.0.1 hportife.42.fr" >> /etc/hosts

ps:	
	@ $(YMLSRC) ps

up:
	@ $(YMLSRC) up

stop:
	@ $(YMLSRC) down

sclean: stop
	@ sudo rm -rf ~/Desktop/inception

clean: stop
	@ rm -rf ~/Desktop/inception

prune: clean
	@ docker system prune -f

reload:  
	@ $(YMLSRC) up --build

.PHONY: linux stop clean prune reload all
