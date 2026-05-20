FROM python:3.10-slim
RUN apt-get update && apt-get install -y git curl nodejs npm && apt-get clean
RUN npm install -g openclaw@latest
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 10000
CMD ["openclaw", "gateway", "start"]
