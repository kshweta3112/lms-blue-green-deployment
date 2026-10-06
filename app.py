from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <h1>LMS Application</h1>
    <h2>Green Environment - Version 2.0</h2>
    <p>New LMS Version</p>
    """

@app.route("/health")
def health():
    return "Green LMS is healthy"

app.run(host="0.0.0.0", port=8080)
