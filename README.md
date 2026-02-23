# Cursor Optimization Framework

Система оптимизации токенов для Cursor IDE.

## Ключевая идея

При выполнении каждой задачи в контексте только:
- `task-NNN.md` — 15-20 строк (одна текущая задача)
- `file.go` — только нужный файл

Не весь план целиком. `optimization-plan.md` используется только
для поиска следующей задачи внутри `run-next-task.txt`.

## Установка

```bash
git clone https://github.com/motokazmin/cursor-optimization-framework
cd your-project-folder
bash ../cursor-optimization-framework/setup.sh
```

## Структура после установки

```
your-project/
├── .cursorignore
├── test-framework.sh
├── GUIDE.md
├── PROCESS.md
└── .cursor/
    ├── rules/optimization.mdc
    ├── context/base.md
    ├── analysis/                    # создаётся промптом 01
    ├── plans/
    │   ├── optimization-plan.md     # индекс задач
    │   ├── tasks/task-NNN.md        # по одному файлу на задачу
    │   └── done/task-NNN.md         # выполненные задачи
    ├── snapshots/changes.md
    └── scripts/
        ├── bash/
        │   ├── analyze-project-structure.sh
        │   ├── find-todos.sh
        │   ├── check-coverage.sh
        │   └── snapshot-state.sh
        └── prompts/
            ├── 01-analyze-project.txt
            ├── 02-create-plan.txt
            ├── 03-fix-simple-bug.txt
            ├── 04-create-architecture.txt
            ├── 05-refactor.txt
            ├── 05b-refactor-complex.txt
            ├── 06-write-unit-tests.txt
            ├── 07-add-godoc.txt
            ├── 09-update-readme.txt
            └── run-next-task.txt    ← единственная точка входа
```

## Подробнее

См. `GUIDE.md` и `PROCESS.md`
