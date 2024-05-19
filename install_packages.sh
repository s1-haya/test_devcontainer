apt-get update && \
    xargs apt-get install -y < /tmp/installed_packages.txt && \
    apt-get clean && \
    apt-get update
