FROM alpine

WORKDIR /media/storage

COPY ./smb.conf /etc/samba/smb.conf

RUN apk add samba && \
    adduser samna -D && \
    echo -ne "password\npassword\n" | smbpasswd -a samna