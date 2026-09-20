FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY server.py check_access.py ./
COPY static ./static

EXPOSE 8053

CMD ["python", "-m", "uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8053"]
