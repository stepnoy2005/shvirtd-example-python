#!/bin/bash
set -e

REPO_URL="https://github.com/stepnoy2005/shvirtd-example-python.git"
TARGET_DIR="/opt/shvirtd-example-python"

echo "=== Клонируем репозиторий в $TARGET_DIR ==="
sudo rm -rf "$TARGET_DIR"
sudo git clone "$REPO_URL" "$TARGET_DIR"

echo "=== Переходим в директорию проекта и запускаем Docker Compose ==="
cd "$TARGET_DIR"
sudo docker compose up -d --build

echo "=== Проект успешно запущен! ==="
sudo docker ps
