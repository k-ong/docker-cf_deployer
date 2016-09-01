FROM ruby:2.3.1

RUN git clone https://github.com/k-ong/cf_deployer.git
RUN cd cf_deployer && git checkout --track -b loosen_environment_validation origin/loosen_environment_validation && gem build cf_deployer.gemspec && gem install cf_deployer-1.5.0.gem

ENTRYPOINT ["cf_deploy"]
CMD ["help"]
