FROM amazonlinux:latest

# Install python and python dependencies
RUN yum install -y python3
RUN pip3 install pip setuptools --upgrade
RUN pip3 install mlflow psycopg2-binary

RUN mkdir /var/mlflow
WORKDIR /var/mlflow

# Add the startup script to the image
COPY startup.sh startup.sh
RUN chmod +x ./startup.sh

# Run the server as the entrypoint
ENTRYPOINT [ "./startup.sh" ]