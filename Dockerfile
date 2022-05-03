FROM python:3.9.7
WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
 
COPY ./requirements.txt /usr/src/app/
RUN pip install -r requirements.txt

COPY . /usr/src/app/

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]