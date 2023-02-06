FROM golang:1.20.0-bullseye as base

FROM base AS builder

WORKDIR /usr/src/app

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
RUN go build -tags=jsoniter  -v -o /web-service-gin




FROM debian:bullseye-slim AS runtime

# Create and switch to a new user
RUN useradd --create-home appuser
WORKDIR /home/appuser

RUN rm -rf /usr/local/bin/app
COPY --from=builder /web-service-gin  /usr/local/bin/app


ENV PORT=8990
EXPOSE ${PORT}

USER appuser

CMD [ "/usr/local/bin/app" ]