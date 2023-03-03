from flask import Flask, jsonify

app = Flask(__name__)

# List of articles
articles = [
    {"id": 1, "name": "Python article 1"},
    {"id": 2, "name": "Article 2"},
    {"id": 3, "name": "Article 3"},
    {"id": 4, "name": "Article 4"},
    {"id": 5, "name": "Article 5"},
    {"id": 6, "name": "Article 6"},
    {"id": 7, "name": "Article 7"},
    {"id": 8, "name": "Article 8"},
    {"id": 9, "name": "Article 9"},
    {"id": 10, "name": "Article 10"},
]

@app.route("/")
def hello():
    # Return the first 10 articles in JSON format
    return jsonify(articles[:10])

if __name__ == "__main__":
    app.run(host="0.0.0.0")