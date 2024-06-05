FROM python:3

RUN git clone https://github.com/mansuf/mangadex-downloader.git /app-src && \
    cd /app-src && \
    git checkout v3.0.0 && \
    pip install .

WORKDIR /downloads/

ENV MANGADEXDL_CONFIG_ENABLED=1

ENTRYPOINT [ "mangadex-downloader" ]

CMD [ "--help" ]
