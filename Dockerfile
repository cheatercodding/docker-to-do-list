# Python 3.9 imajını temel alıyoruz
FROM python:3.9-slim

# Çalışma dizinini ayarlıyoruz
WORKDIR /app

# Gereksinim dosyasını konteynere kopyalıyoruz
COPY requirements.txt .

# Gereksinimleri yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını konteynere kopyalıyoruz
COPY . .

# Flask uygulamasını çalıştıran komutu belirtiyoruz
CMD ["python", "app.py"]