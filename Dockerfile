FROM python:3.11.9
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt update && apt install tree

ADD ./requirements.txt /home/new/requirements.txt

WORKDIR /home/new/
RUN pip install -r requirements.txt

WORKDIR /home/new/mysite

CMD python manage.py runserver 0.0.0.0:8000
