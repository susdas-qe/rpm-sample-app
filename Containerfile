FROM registry.access.redhat.com/ubi10/ubi-minimal@sha256:a13cec4e2e30fa2ca6468d474d02eb349200dc4a831c8c93f05a2154c559f09b
RUN dnf -y install httpd-tools
CMD ["ab", "-V"]