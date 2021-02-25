FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/devsunsam/digduck.git

WORKDIR /home/digduck

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=en7v$sk-+*$tw0r&m4%5!2jn%bxuzeclbqt40-_-k!+77_(09" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]