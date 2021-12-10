#FROM docker.io/rockylinux/rockylinux:8
FROM docker.io/centos/python-27-centos7:latest

#RUN dnf -y install python27

RUN mkdir -p /opt/app-root/src
WORKDIR /opt/app-root/src
COPY . .

RUN python -m pip install --upgrade pip==20.3.4
RUN python -m pip install -e .


CMD ["python", "runserver.py"]
