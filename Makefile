arg = $(filter-out $@,$(MAKECMDGOALS))

#### Docker ####

ps:
	docker ps

rm:
	docker rm -v -f apache-poc-app

build:
	docker build -t apache-poc .

run:
	docker run --rm -dit --name apache-poc-app -p 8888:80 apache-poc

reload: build rm run

ssh:
	docker exec -it apache-poc-app bash