FROM gitlab/gitlab-runner:latest

ADD entrypoint /
RUN chmod +x /entrypoint

ENTRYPOINT ["/usr/bin/dumb-init", "/entrypoint"]
CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]
