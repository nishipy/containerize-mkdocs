FROM alpine:3.12

LABEL maintainer "nishipy"

EXPOSE 8000

#ENV MKDOCS_VERSION="1.0.4"

RUN apk update \
  && apk add --no-cache python3 \
  && pip3 install --upgrade pip \
  && pip3 install mkdocs mkdocs-material

WORKDIR /workdir
COPY mkdockerize.sh /workdir/mkdockerize.sh
RUN chmod +x /workdir/mkdockerize.sh

ENTRYPOINT ["/workdir/mkdockerize.sh"]