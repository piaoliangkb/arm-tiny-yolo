from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/feed', methods=['GET', 'POST'])
def feed():
    if request.method == 'POST':
        body = request.form.to_dict()
    return jsonify(body)
