ci:
	docker-compose -f docker-compose.yml run --rm app make test

test-prod:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

build-prod:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app
