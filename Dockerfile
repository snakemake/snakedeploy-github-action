FROM ubuntu:22.04
RUN pip install snakedeploy
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
