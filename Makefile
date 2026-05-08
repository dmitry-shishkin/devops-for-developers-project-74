test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dockerize:
	docker compose -f docker-compose.yml build app

publish:
	docker compose -f docker-compose.yml push app
