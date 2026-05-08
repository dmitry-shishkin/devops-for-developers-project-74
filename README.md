[![Actions Status](https://github.com/dmitry-shishkin/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/dmitry-shishkin/devops-for-developers-project-74/actions) [![publish](https://github.com/dmitry-shishkin/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/dmitry-shishkin/devops-for-developers-project-74/actions/workflows/push.yml)

# DevOps for Developers Project 74

Проект создан для контейнеризации приложения JS Fastify Blog.

Подробней о работе этого проекта читайте в отдельном [./app/README.md](README.md).

## Использование

Образ опубликован в [DockerHub](dmitryshishkin/devops-for-developers-project-74) 

Получение образа:
 
```sh
docker pull dmitryshishkin/devops-for-developers-project-74
``` 

## Разработка проекта

Перед началом разработки следует установить зависимости.

```sh
make install
```

Запуск в режиме разработки:

```sh
make dev
```

Тестовое окружение открывается по адресу https://localhost/

Остановка приложения:

```sh
make stop
```

Запуск тестов:

```sh
make test
```

## Что необходимо для работы

- Docker 28+
- Docker Compose 2+
- Make
