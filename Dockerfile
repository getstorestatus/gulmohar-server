# load the base image
FROM continuumio/miniconda3


# command executable and version

WORKDIR /broker
COPY . . 

# RUN conda env create -f broker_mac.yml
# RUN conda init bash
# RUN conda activate mdbroker
COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["python", "broker_main.py", "--port", "5555"]
