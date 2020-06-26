setup:
	docker volume create nodemodules
	# creates docker volume for node_modules
	# make sure to run `make setup` before running any docker-compose command
dev:
	docker-compose up

build:
	docker-compose -f docker-compose.builder.yml run --rm build

test:
	docker-compose -f docker-compose.builder.yml run --rm test
	
all: setup dev
	# run `make all` to setup docker volume for node_modules, install dependencies and run the application