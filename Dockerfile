FROM python:3.13-slim

WORKDIR /app
ENV PYTHONPATH=/app

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc python3-dev && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 80

CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","80","--reload"]
