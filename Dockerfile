FROM condaforge/mambaforge
RUN mamba create -c conda-forge -c bioconda -n snakedeploy snakedeploy -y
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
