#!/bin/bash

echo "🚀 Iniciando deploy automático..."

msg="auto-deploy $(date)"

git add .
git commit -m "$msg" || echo "Sin cambios"
git push origin master

# Build Docker
docker build -t mi-proyecto .

# Eliminar contenedor anterior si existe
docker rm -f mi-contenedor 2>/dev/null || true

# Ejecutar contenedor correctamente
docker run -dit --name mi-contenedor mi-proyecto tail -f /dev/null

echo "✅ Deploy completo y contenedor corriendo"
