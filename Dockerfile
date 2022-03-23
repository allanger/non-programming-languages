FROM python:3.9.10-buster AS build-stage

COPY . .
RUN make prepare

RUN make build_mkdocs_verbose

EXPOSE 80
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:80"]