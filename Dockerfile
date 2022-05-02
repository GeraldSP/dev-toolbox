FROM registry.access.redhat.com/ubi8/ubi:8.5


RUN yum update && \
    yum install git

ENTRYPOINT [ "sleep", "5555" ]