FROM continuumio/miniconda3

RUN mkdir /arpeggio
WORKDIR /arpeggio

COPY requirements-docker.yml /arpeggio
RUN conda env update -f requirements-docker.yml

COPY config.py /arpeggio
COPY arpeggio.py /arpeggio
COPY show_contacts.py /arpeggio
