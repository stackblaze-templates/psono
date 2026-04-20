FROM psono/psono-server:latest

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:10100/healthcheck/')" || exit 1

EXPOSE 10100
