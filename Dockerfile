FROM condaforge/mambaforge
RUN mamba create -n snakedeploy snakedeploy -y
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
