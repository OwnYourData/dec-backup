FROM oydeu/dc-base:latest
MAINTAINER "Christoph Fabianek" christoph@ownyourdata.eu

COPY . .
RUN bundle install

CMD ["./script/init.sh"]

EXPOSE 3000
