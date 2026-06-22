# Разработка Lemora

## Ветки

Для функциональных изменений используй короткие ветки:

```text
feature/onboarding
fix/review-card-overflow
refactor/srs-scheduler
test/review-session
docs/architecture
chore/update-dependencies
```

Изменения объединяются с `main` через pull request после успешного CI.

## Коммиты

Сообщения коммитов следуют формату Conventional Commits:

```text
<type>: <description>
```

Допустимые типы:

- `feat` — новая пользовательская функциональность;
- `fix` — исправление ошибки;
- `refactor` — изменение структуры без изменения поведения;
- `test` — добавление или изменение тестов;
- `docs` — документация;
- `ci` — GitHub Actions и CI/CD;
- `build` — сборка и связанные инструменты;
- `chore` — зависимости, конфигурация и другие служебные изменения;
- `perf` — улучшение производительности;
- `style` — форматирование без изменения поведения.

Описание должно:

- быть на английском языке;
- начинаться со строчной буквы;
- кратко описывать выполненное действие;
- не заканчиваться точкой.

Примеры:

```text
feat: add language selection
fix: prevent review card overflow
refactor: extract SRS scheduler
test: cover review intervals
docs: update project roadmap
ci: add pull request checks
chore: update dependencies
```

Опциональный scope можно использовать, когда он действительно помогает уточнить область изменения:

```text
feat(onboarding): add language selector
fix(review): preserve current card
```

Один коммит должен содержать одно логически завершенное изменение. Не смешивай функциональность, рефакторинг и несвязанные исправления в одном коммите.

## Проверки

Перед передачей изменений на проверку запусти:

```bash
dart format --output=none --set-exit-if-changed lib test
flutter analyze
dcm analyze lib test
flutter test
```

Если изменялись генерируемые модели или тема, также запусти:

```bash
dart run build_runner build
```

Если изменялись ассеты:

```bash
spider build
```
