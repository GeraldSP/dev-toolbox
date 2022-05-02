FROM registry.access.redhat.com/ubi8/ubi:8.5


RUN yum update -y && \
    yum install -y git

ENTRYPOINT [ "sleep", "5555" ]