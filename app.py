from gevent import monkey
monkey.patch_all()

def create_app():
    """
    creation application flask
    :return instance application
    """
    from flask import Flask
    app = Flask(__name__)
    _configure_blueprints(app)

    return app
def _configure_blueprints(app):
    """
    configuration des blueprints application
    :param app: instance application Flask
    """
    from model_rna import basic_rna_model
    blueprints = [
        basic_rna_model
    ]
    for route in blueprints:
        app.register_blueprint(route)
