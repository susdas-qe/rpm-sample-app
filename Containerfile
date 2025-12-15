FROM registry.access.redhat.com/ubi9:latest
RUN dnf -y install httpd-tools
CMD ["ab", "-V"]