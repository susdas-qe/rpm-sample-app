FROM registry.access.redhat.com/ubi10/ubi@sha256:8405dd7146117f019670429f93ce044f0839f47ff81ec45bb53cf528f1f6ce11
RUN dnf -y install httpd-tools
CMD ["ab", "-V"]