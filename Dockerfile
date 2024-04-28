FROM python:3.12.2

ENV PYTHONUNBUFFERED 1

COPY ./start /start
RUN sed -i 's/\r//' /start
RUN chmod +x /start

WORKDIR /app

COPY ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

