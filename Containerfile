FROM registry.access.redhat.com/ubi10/ubi@sha256:8405dd7146117f019670429f93ce044f0839f47ff81ec45bb53cf528f1f6ce11

# Check if the build is performed in hermetic environment
# (without access to the internet)
RUN if curl -s example.com > /dev/null; then echo "build is not being performed in hermetic environment" && exit 1; fi

RUN dnf -y install httpd-tools

CMD ["ab", "-V"]