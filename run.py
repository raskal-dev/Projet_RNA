import app as boot
from config import Config

app = boot.create_app()

if __name__ == "__main__":
    app.run(port=Config.APP_PORT,
            host=Config.APP_HOST,
            debug=Config.APP_DEBUG)
