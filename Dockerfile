FROM pingidentity/pingdirectory:2011-alpine-8.0.0.1
COPY pingdirectory/. /opt/in/.

ENV PING_IDENTITY_ACCEPT_EULA=YES
ENV PING_IDENTITY_DEVOPS_USER=
ENV PING_IDENTITY_DEVOPS_KEY=
ENV ENABLE_INSECURE_REMOTE_EXTENSIONS=true
ENV USER_BASE_DN=dc=shcpc,dc=sharp,dc=com