from flask import request, Blueprint,jsonify
from config import  Config

basic_rna_model = Blueprint("basic_model", __name__, url_prefix=f'{Config.CONTEXTE_PATH}')

@basic_rna_model.route("/basic_model", methods=['GET', 'POST'])
def basic_model():
    response = jsonify("C'est basic_model mod")
    response.status_code = 200
    return response
