from flask import Flask, jsonify, request,render_template, safe_join, send_from_directory


app = Flask(__name__)

"""
@app.route('/js/<path:path>')
def send_js(path):
    return send_from_directory('js', path)
"""

@app.route('/')
def index():
    return render_template('index.html')




if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True)
