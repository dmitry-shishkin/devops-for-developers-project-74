install:
	docker run --rm -it -w /app -v "$(PWD)/app:/app" node:20.20.2 make install

prepare-env:
	cd app && make prepare-env

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker compose up

stop:
	docker compose down

publish:
	docker compose -f docker-compose.yml build --push app
