setup: install db-migrate

install:
	npm install

db-migrate:
	npm run migrate

build:
	npm run build

prepare-env:
	cp -n .env.example .env

start:
	NODE_ENV=production npm run start

dev:
	npx concurrently "make start-frontend" "make start-backend"

start-backend:
	npm start -- --watch --verbose-watch --ignore-watch='node_modules .git .sqlite'

start-frontend:
	npx webpack --watch --progress

lint:
	npx eslint .

lint-fix:
	npx eslint --fix .

test:
	NODE_ENV=test npm test -s

ci:
	docker-compose -f docker-compose.yml run --rm app make test

test-prod:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

build-prod:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app
