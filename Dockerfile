FROM condaforge/mambaforge
RUN mamba create -c conda-forge -c bioconda -n snakedeploy snakedeploy -y && mamba init bash
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
