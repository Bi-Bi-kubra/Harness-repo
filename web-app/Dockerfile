# Use official Python image
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

# Use PORT 8080 or whatever you set
EXPOSE 8080

CMD ["python", "app.py"]
