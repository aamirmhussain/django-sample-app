FROM python:3.11.9

RUN apt update && apt install tree

ADD ./requirements.txt /home/myapplication/requirements.txt

WORKDIR /home/myapplication/
RUN pip install -r requirements.txt

WORKDIR /home/myapplication/sampleapp

CMD python manage.py runserver 0.0.0.0:8000
