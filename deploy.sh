#!/bin/bash

echo "🚀 Iniciando deploy automático..."

# Mensaje con fecha
msg="auto-deploy $(date)"

# Git
git add .
git commit -m "$msg" || echo "Sin cambios"
git push origin master

# Docker build
docker build -t mi-proyecto .

echo "✅ Deploy completo"
