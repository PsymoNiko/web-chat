#FROM python:3.8
#
#ENV DockerHOME=/home/app/webapp
#
#RUN mkdir /app
#
#WORKDIR /app
#
#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1
#
#COPY . /app
#
#RUN python3 -m pip install --upgrade pip
#
#COPY requirements.txt requirements.txt
#RUN python3 -m pip install -r requirements.txt
#
##EXPOSE 8000
#
#COPY . /app

#CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]




FROM python:3.8

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]