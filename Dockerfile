FROM python:3.9.10-buster AS build-stage

WORKDIR /mkdocs
COPY . .

RUN make prepare
RUN make build_mkdocs

ENTRYPOINT ["mkdocs"]
CMD ["build"]

FROM nginx:stable-alpine AS production-stage
COPY --from=build-stage /mkdocs/site /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
