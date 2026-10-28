FROM docker.io/pgsty/silo:RELEASE.2026-10-26T00-00-00Z

VOLUME ["/data"]
EXPOSE 9000

CMD ["server", "/data", "--console-address", ":9001"]
