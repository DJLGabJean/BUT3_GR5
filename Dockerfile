FROM ubuntu:latest
LABEL authors="Luigi"

ENTRYPOINT ["top", "-b"]