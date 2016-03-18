FROM aweiker/alpine-elixir:1.2.1

ENV APP_NAME=app
RUN mkdir -p /$APP_NAME
WORKDIR /$APP_NAME
ADD . /$APP_NAME

# Install the dependencies
RUN mix deps.get

CMD PORT=80 mix run --no-halt
