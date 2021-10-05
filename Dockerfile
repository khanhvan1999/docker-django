FROM python:3.8
RUN pip install --no-cache-dir "Django<2.1" mysqlclient
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN python -m pip install -r requirements.txt
#RUN pip install pymysql
COPY . /code/




