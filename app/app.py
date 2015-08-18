from flask import Flask, jsonify, request,render_template, safe_join, send_from_directory


app = Flask(__name__)

@app.route('/<any(css, img, js, sound):folder>/<path:filename>')
def toplevel_static(folder, filename):
    filename = safe_join(folder, filename)
    cache_timeout = app.get_send_file_max_age(filename)
    return send_from_directory(app.static_folder, filename,
                               cache_timeout=cache_timeout)

@app.route('/')
def index():
    return render_template('index.html')




if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True)
