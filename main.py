import requests
from flask import Flask, jsonify,request

app = Flask(__name__)

url="http://f0736591.xsph.ru/api.php?type=generate_unique&"

@app.route('/api', methods=['POST','GET'])
def crack():
    try:
        ru = request.args.get('ru')
        en = request.args.get('en')
        result = requests.post((url+f"user={ru}&base={en}"))
        print(result.text+" -- "+request.remote_addr)


        return result.text
    except:
        return "e"


@app.errorhandler(404)
def not_found(error):
    try:
        ru = request.args.get('ru')
        en = request.args.get('en')
        result = requests.post((url + f"user={ru}&base={en}"))
        print(result.text + " -- " + request.remote_addr)


        return result.json()
    except:
        return "e"

context = ('serf.crt', 'key.key')#cs
app.run(debug=True,host="0.0.0.0",port=80)
