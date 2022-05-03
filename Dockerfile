FROM registry.access.redhat.com/ubi8/ubi:8.5


RUN yum update -y && \ 
    yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm &&\
    yum install -y git curl siege && \
    curl -kv https://downloads-openshift-console.apps.kali.rlab.sh/amd64/linux/oc.tar --output oc.tar &&\
    tar -xvf oc.tar -C /usr/local/bin/ 
    
ENV KUBECONFIG=/tmp/kubeconfig

WORKDIR /tmp

ENTRYPOINT [ "sleep", "999999" ]
