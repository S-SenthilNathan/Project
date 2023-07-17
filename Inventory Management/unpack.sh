mkdir -m 777 templates
mkdir -m 777 static
mv ./S4A_main.html ./templates
mv ./S4B_main.js ./static
mv ./S4C_main.css ./static
virtualenv venv
source "venv/bin/activate"
pip install flask
python S1B_create.py
python S3_server.py