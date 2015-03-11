FROM dockerfile/java
RUN useradd -m -d /home/embulk -s /bin/bash embulk && \
    echo "embulk:embulk" | chpasswd && \
    echo "embulk ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN curl --create-dirs -o /opt/bin/embulk -L https://bintray.com/artifact/download/embulk/maven/embulk-0.5.2.jar && \
    chown embulk:embulk /opt/bin/embulk && \
    chmod +rx /opt/bin && \
    chmod +x /opt/bin/embulk && \
    chown embulk:embulk /data
ENV HOME /home/embulk
ENV PATH /opt/bin:$HOME/.embulk/bin:$PATH
USER embulk
ENTRYPOINT ["java", "-jar", "/opt/bin/embulk"]
CMD ["--help"]

