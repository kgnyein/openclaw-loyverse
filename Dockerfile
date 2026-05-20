FROM python:3.10-slim
RUN apt-get update && apt-get install -y git curl nodejs npm && apt-get clean
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "-m", "openclaw", "gateway", "start"]
