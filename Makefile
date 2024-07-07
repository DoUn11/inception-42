name = inception

all: up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
down:
	docker-compose -f ./srcs/docker-compose.yml down
re:
	docker-compose -f ./srcs/docker-compose.yml down
	rm -rf /Users/doukim/data/wp-data/* /Users/doukim/data/db-data/*
	docker-compose -f ./srcs/docker-compose.yml up --build -d

clean:
	rm -rf /Users/doukim/data/wp-data/* /Users/doukim/data/db-data/*

status:
	docker ps