install:
	docker run --rm -it -w /app -v "$(PWD)/app:/app" node:20.20.2 make install

prepare-env:
	cp -n .env.example .env

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

test-ci:
	make prepare-env
	make test

dev:
	docker compose up

stop:
	docker compose down
