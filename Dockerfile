FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 10000
CMD ["sh", "-c", "openclaw server 2>&1 | tee error_log.txt; echo \"=== SERVER CRASHED, KEEPING ALIVE FOR LOGS ===\"; python -m http.server 10000"]
