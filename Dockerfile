# 1. Беремо офіційний базовий образ Python
FROM python:3.11-slim

# 2. Встановлюємо робочу директорію всередині контейнера
WORKDIR /app

# 3. Встановлюємо системні залежності для роботи з PostgreSQL (psycopg2)
RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# 4. Копіюємо файл залежностей та встановлюємо їх
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Копіюємо весь код додатка в контейнер
COPY . .

# 6. Вказуємо команду для запуску додатка
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]