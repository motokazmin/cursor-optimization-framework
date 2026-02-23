# Контекст проекта

## О проекте
**Название:** my-service
**Цель:** REST API сервис для обработки заказов

## Стек
- Backend: Go 1.24.3, Gin framework
- БД: PostgreSQL, sqlx
- Кэш: Redis
- Тестирование: testify, gomock
- Конфиг: godotenv, viper

## Архитектура
Clean Architecture: handler → service → repository

```
cmd/
└── main.go              # точка входа, wire зависимостей
internal/
├── handler/             # HTTP: парсинг запроса, вызов service, ответ
├── service/             # бизнес-логика, интерфейсы зависимостей
├── repository/          # работа с БД и внешними API
├── model/               # структуры данных (DTO, entity)
└── config/              # загрузка конфигурации
pkg/
└── logger/              # общие утилиты
```

## Соглашения
- Git: Conventional Commits (feat/fix/refactor/docs/test/chore)
- Ошибки: всегда fmt.Errorf("context: %w", err), не игнорировать
- Логирование: structured logging, zerolog
- Интерфейсы: определять в пакете потребителя (не в repository)
- Тесты: testify/assert, моки через gomock или вручную
- Минимум coverage: 60% для service/, 40% для handler/
- go vet + golangci-lint перед коммитом

## Исключения (не трогать)
- vendor/ — зависимости
- migrations/ — SQL миграции, только вручную
- .env — секреты, не коммитить
