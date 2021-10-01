FROM ruby
RUN apt-get -y update && \
    apt-get -y install libicu-dev cmake && \
    rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install org-ruby  # optional
RUN gem install omnigollum
RUN gem install github-markup
RUN gem install omniauth-github

COPY entrypoint.sh /entrypoint.sh
COPY config.rb /config.rb

WORKDIR /wiki

ENV GOLLUM_USER gollum
ENV GOLLUM_EMAIL gollum@gollum.org
ENV GOLLUM_PORT 4567
ENV GITHUB_OAUTH_CLIENT_ID your_client_id
ENV GITHUB_OAUTH_SECRET your_secret
ENV AUTHORIZED_USERS example1@example.org,example2@example.org

CMD ["/entrypoint.sh"]
