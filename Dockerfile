FROM python:3.11

WORKDIR /app

COPY . .

CMD ["tail", "-f", "/dev/null"]
