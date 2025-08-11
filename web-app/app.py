from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Azure from Flask container!"

if __name__ == "__main__":
    # Azure App Service sets PORT as an env var
    port = int(os.environ.get("PORT", 8080))
    app.run(host="0.0.0.0", port=port)
