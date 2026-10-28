FROM python:3.12-slim

RUN pip install --no-cache-dir "youtube-context-mcp[media]" && pip install --no-cache-dir "mcp<2"

CMD ["sh", "-c", "youtube-context-mcp --transport http --host 0.0.0.0 --port ${PORT:-8000}"]
