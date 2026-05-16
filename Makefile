install:
	docker run --rm -it -w /app -v "$(PWD)/app:/app" node:20.20.2 make install

prepare-env:
	cp -n .env.example .env || true

compose-test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-test-ci:
	make prepare-env
	make compose-test

compose-dev:
	docker compose up

compose-stop:
	docker compose down
