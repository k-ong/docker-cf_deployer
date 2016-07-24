FROM ruby:2.3.1

RUN gem install cf_deployer

ENTRYPOINT ["cf_deploy"]
CMD ["help"]
