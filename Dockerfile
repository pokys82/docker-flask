FROM ubuntu:latest

# install python
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential

WORKDIR /app

# install dependencies
COPY . .
RUN pip install -r requirements.txt

EXPOSE 5000

# run the application
CMD python3 app/webapp.py
