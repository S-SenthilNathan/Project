md templates
md static
move S4A_main.html templates
move S4B_main.js static
move S4C_main.css static
virtualenv venv
call venv/Scripts/activate
pip install flask
py S1B_create.py
py S3_server.py