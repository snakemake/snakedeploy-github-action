FROM ubuntu:22.04
RUN apt-get update && apt-get install python3 -y
RUN pip install snakedeploy
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
