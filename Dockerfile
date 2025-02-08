FROM python:3.12.9-alpine3.21

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app 

COPY requirements.txt . 

RUN pip install -r requirements.txt 

COPY . . 

Expose 8000 

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

