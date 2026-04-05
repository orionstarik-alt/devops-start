FROM python:3.9

WORKDIR /app

RUN echo 'from http.server import SimpleHTTPRequestHandler, HTTPServer\nHTTPServer(("0.0.0.0", 80), SimpleHTTPRequestHandler).serve_forever()' > app.py

CMD ["python", "app.py"]
