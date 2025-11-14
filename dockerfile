FROM python:3

WORKDIR /usr/src/app

RUN pip install --no-cache-dir Django

COPY . .

EXPOSE 8000

CMD [ "sh","-c", "python ./manage.py migrate && python ./manage.py runserver 0.0.0.0:8000"]
