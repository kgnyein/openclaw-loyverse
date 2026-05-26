FROM ghcr.io/openclaw/openclaw:latest

# Config file ကို image ထဲမှာ တိုက်ရိုက်ဆောက်ပေးခြင်း
RUN mkdir -p /app && echo -e '[gateway]\nmode = "server"\nbind = "0.0.0.0:10000"' > /app/openclaw.toml

EXPOSE 10000
