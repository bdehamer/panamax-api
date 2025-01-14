FROM centurylink/panamax-ruby-base:latest

CMD bundle exec rake db:create && \
  bundle exec rake db:migrate && \
  bundle exec rake db:seed && \
  bundle exec rake panamax:templates:unload && \
  bundle exec rake panamax:templates:load && \
  bundle exec rails s
