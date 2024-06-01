# Mangadex Downloader Docker

## run
``` shell
time (nocorrect docker build --progress=plain -t mangadex-downloader . && docker run -ti -v ./downloads:/downloads/ --rm mangadex-downloader --language en --sort-by chapter --save-as "cbz" --delay-requests 1.5 /downloads/download.txt )```
