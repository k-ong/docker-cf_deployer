FROM ruby:2.3.1

RUN git clone https://github.com/k-ong/cf_deployer.git
RUN cd cf_deployer && git checkout --track -b loosen_environment_validation origin/loosen_environment_validation && gem build cf_deployer.gemspec && gem install cf_deployer-1.5.0.gem && cd ..
RUN git clone https://github.com/phasewave/sumologic-sdk-ruby.git
RUN cd sumologic-sdk-ruby && git checkout --track -b feature/collectors_api && gem build sumologic.gemspec && gem install sumologic-0.0.5.gem

ENTRYPOINT ["cf_deploy"]
CMD ["help"]
