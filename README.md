Docker & Kubernetes FastAPI Demo App
Цей проєкт демонструє процес контейнеризації та оркестрації багатосервісного додатка
(FastAPI, PostgreSQL, pgAdmin) за допомогою Docker та Kubernetes (Minikube). Проєкт був
розроблений у межах практичної роботи з дисципліни "Адміністрування Unix-подібних
операційних систем".

🛠 Технологічний стек
● Мова: Python (FastAPI)
● База даних: PostgreSQL
● Контейнеризація: Docker
● Оркестрація: Kubernetes (Minikube)
● Адміністрування БД: pgAdmin 4

🔧 Інструкція з розгортання
1. Підготовка середовища
Запустіть Minikube з використанням Docker-драйвера, щоб мати доступ до локальних
образів:
minikube start --driver=docker
Налаштуйте термінал на використання Docker-демона всередині Minikube:
minikube docker-env | Invoke-Expression

2. Збірка образу
docker build -t fastapi-k8s:latest .
3. Розгортання в Kubernetes
Застосуйте всі маніфести з папки k8s/:
kubectl apply -f k8s/
4. Доступ до додатку
Отримайте URL для доступу до сервісів:
minikube service web-service
minikube service pgadmin-service
