test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

publish:
	docker compose -f docker-compose.yml build --push app
