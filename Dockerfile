FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 10000
CMD bash -c "python -m http.server 10000 & openclaw --help; tail -f /dev/null"
