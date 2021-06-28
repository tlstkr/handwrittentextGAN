
from flask import Flask, request, render_template, send_file
import model

app = Flask(__name__)



@app.route('/')
def home():
    return render_template('home.html')

    
@app.route('/predict')
def return_image_letter():
    
    letter = request.args.get('text')
    if model.check_input_validation(letter):
        img = model.get_image(letter)
        img.save('result.png')
        return send_file('result.png')
    else:
        return 'Input is incorrect!'
    
if __name__ == '__main__':
    app.debug = True
    app.run()
