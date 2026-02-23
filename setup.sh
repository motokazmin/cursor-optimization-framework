#!/bin/bash
# Cursor Optimization Framework - Setup

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🚀 Cursor Optimization Framework - Setup"
echo ""

echo "📁 Создаю структуру .cursor/..."
mkdir -p .cursor/rules
mkdir -p .cursor/context
mkdir -p .cursor/analysis
mkdir -p .cursor/plans/tasks
mkdir -p .cursor/plans/done
mkdir -p .cursor/snapshots
mkdir -p .cursor/scripts/prompts
mkdir -p .cursor/scripts/bash

echo "📋 Копирую файлы..."
cp "$SCRIPT_DIR/.cursorignore"                          ./.cursorignore
cp "$SCRIPT_DIR/.cursor/rules/optimization.mdc"         ./.cursor/rules/
cp "$SCRIPT_DIR/.cursor/context/base.md"                ./.cursor/context/
cp "$SCRIPT_DIR/.cursor/snapshots/changes.md"           ./.cursor/snapshots/
cp "$SCRIPT_DIR/.cursor/plans/optimization-plan.md"     ./.cursor/plans/
cp "$SCRIPT_DIR/.cursor/plans/tasks/task-000-example.md" ./.cursor/plans/tasks/
cp "$SCRIPT_DIR/.cursor/scripts/bash/"*.sh              ./.cursor/scripts/bash/
cp "$SCRIPT_DIR/.cursor/scripts/prompts/"*.txt          ./.cursor/scripts/prompts/
cp "$SCRIPT_DIR/PROCESS.md"                             ./PROCESS.md
cp "$SCRIPT_DIR/GUIDE.md"                               ./GUIDE.md
cp "$SCRIPT_DIR/test-framework.sh"                      ./test-framework.sh

chmod +x .cursor/scripts/bash/*.sh
chmod +x test-framework.sh

echo ""
echo "✅ Установка завершена!"
echo ""
echo "📋 Следующие шаги:"
echo "  1. Отредактируй .cursor/context/base.md под свой проект"
echo "  2. Запусти: bash test-framework.sh"
echo "  3. В Cursor: промпт 01-analyze-project.txt (Opus)"
