FROM condaforge/mambaforge
ENV SHELL /bin/bash
ADD environment.yaml .
RUN mamba env create -n snakemake-tutorial -f environment.yaml
RUN (conda activate snakemake-tutorial; dot -c && dot -v)
