import http.server
import socketserver
import os

PORT = 7000
DIRECTORY = "webpage"

class CustomHandler(http.server.SimpleHTTPRequestHandler):
     def __init__(self, *args, **kwargs):
         super().__init__(*args, directory=DIRECTORY, **kwargs)

with socketserver.TCPServer(("", PORT), CustomHandler) as httpd:
    print(f"Serving at port {PORT}")
    httpd.serve_forever()
