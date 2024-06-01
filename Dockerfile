FROM python:3

RUN git clone https://github.com/mansuf/mangadex-downloader.git /app-src && \
    cd /app-src && \
    pip install .

WORKDIR /downloads/

ENTRYPOINT [ "mangadex-downloader" ]

CMD [ "--help" ]
