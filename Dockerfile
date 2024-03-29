# start with a base image
FROM ubuntu:14.10


# install dependencies
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install flask

# update working directories
ADD ./app /app

CMD python app/app.py
