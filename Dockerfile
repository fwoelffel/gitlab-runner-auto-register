FROM gitlab/gitlab-runner:v11.2.0

ADD entrypoint /
RUN chmod +x /entrypoint

ENTRYPOINT ["/usr/bin/dumb-init", "/entrypoint"]
CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]
