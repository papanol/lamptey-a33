from flask import Flask, jsonify

# Initialize Flask app
app = Flask(__name__)

@app.route('/')
def hello_cloud():
    return jsonify({"message": "Hello from Lamptey ECS Container!"})

if __name__ == '__main__':
    # Ensure app runs only in a development environment
    app.run(host='0.0.0.0', port=5000, debug=False)

