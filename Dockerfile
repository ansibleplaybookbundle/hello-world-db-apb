FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogaGVsbG8td29ybGQtZGItYXBiCmltYWdlOiBhbnNpYmxlcGxheWJvb2tidW5kbGUvaGVs\
bG8td29ybGQtZGItYXBiCmRlc2NyaXB0aW9uOiBBIHNhbXBsZSBBUEIgd2hpY2ggZGVwbG95cyBI\
ZWxsbyBXb3JsZCBEYXRhYmFzZQpiaW5kYWJsZTogVHJ1ZQphc3luYzogb3B0aW9uYWwKbWV0YWRh\
dGE6CiAgZGlzcGxheU5hbWU6IEhlbGxvIFdvcmxkIERhdGFiYXNlIChBUEIpCnBsYW5zOgogIC0g\
bmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246IEEgc2FtcGxlIEFQQiB3aGljaCBkZXBsb3lz\
IEhlbGxvIFdvcmxkIERhdGFiYXNlCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToKICAgICAg\
ZGlzcGxheU5hbWU6IERlZmF1bHQKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gZGVw\
bG95cyBhIFBvc3RncmVzIERhdGFiYXNlIHRoZSBIZWxsbyBXb3JsZCBhcHBsaWNhdGlvbiBjYW4g\
Y29ubmVjdCB0bwogICAgICBjb3N0OiAkMC4wMAogICAgcGFyYW1ldGVyczoKICAgICAgLSBuYW1l\
OiBwb3N0Z3Jlc3FsX2RhdGFiYXNlCiAgICAgICAgdGl0bGU6IFBvc3RncmVTUUwgRGF0YWJhc2Ug\
TmFtZQogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgIC0g\
bmFtZTogcG9zdGdyZXNxbF91c2VyCiAgICAgICAgdGl0bGU6IFBvc3RncmVTUUwgVXNlcgogICAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgIC0gbmFtZTogcG9z\
dGdyZXNxbF9wYXNzd29yZAogICAgICAgIHRpdGxlOiBQb3N0Z3JlU1FMIFBhc3N3b3JkCiAgICAg\
ICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogYWRtaW4K"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb