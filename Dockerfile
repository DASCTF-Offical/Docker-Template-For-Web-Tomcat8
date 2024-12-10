FROM tomcat:8-jdk8
COPY files /tmp/files/
RUN mv /tmp/files/flag.sh / && \
    mv /tmp/files/start.sh / && \
    chmod +x /flag.sh /start.sh && \
    rm -rf /tmp/files && \
    useradd app -m && \
    mkdir /app && \
    chown -R root:root /app && \
    chmod -R 755 /app
WORKDIR /app
CMD /start.sh
