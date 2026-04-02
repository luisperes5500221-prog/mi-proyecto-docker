FROM python:3.11

WORKDIR /app

COPY . .

CMD ["echo", "Contenedor funcionando"]
