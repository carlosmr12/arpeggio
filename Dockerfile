FROM continuumio/miniconda3

RUN mkdir /arpeggio
WORKDIR /arpeggio

COPY requirements.yml /arpeggio
RUN conda env update -f requirements.yml

COPY config.py /arpeggio
COPY arpeggio.py /arpeggio
COPY show_contacts.py /arpeggio
