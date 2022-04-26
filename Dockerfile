#Pulling base python image
FROM python:3.6-slim

# Updating the repo 
RUN apt-get clean && apt-get -y update 

# Creating working directory in container
WORKDIR /wuaki

#Adding project folder 
ADD . /wuaki/

#Installing flask modules
RUN pip3 install -r requirements.txt

CMD ["python", "/wuaki/wuaki.py"]