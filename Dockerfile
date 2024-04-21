#pulling base image with linux and python
FROM python:3.9.16
#copying content files to app 
COPY . /app
# making app directory
WORKDIR /app
#installing dependencies 
RUN pip install -r requirements.txt
#exposing port and assigning port to ip
EXPOSE $PORT
CMD python app.py --bind 0.0.0.0:$PORT 