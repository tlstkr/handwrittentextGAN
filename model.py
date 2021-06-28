#!/usr/bin/env python
# coding: utf-8

# In[7]:


import tensorflow as tf
import numpy as np
from flask import Flask, request, render_template
from varname import nameof
from flask import send_file
from PIL import Image


# In[8]:


def check_input_validation(word):
    iter = 0
    for i in word:
        if i in 'abcdefghijklmnopqrstuvwxyz ':
            iter += 1
    return iter == len(word)



# In[9]:


models = {}
def get_image(letter):

    if letter not in list(models.keys()):
        models[letter] = tf.keras.models.load_model(letter+'_generator')
        
    fixed_noise = np.random.normal(0, 1, size=(100, 100))
    imgs = models[letter].predict(fixed_noise)
    img = imgs[np.random.randint(1,len(imgs))-1]
    img = tf.image.resize(img, (200, 200), antialias=True)
    # print("letter:", img.size)
    return img


def generate_result(word):
    images = []
    result_image = np.full((28,200,1), -1)
    for i in word:
        if i == ' ':
            result_image = np.concatenate((result_image, np.full((28,200,1), -1)), axis=1)
        else:
            result_image = np.concatenate((result_image, get_image(i)), axis=1)
    result_image = np.concatenate((result_image, np.full((28,200,1), -1)), axis=1)
    # result_image = tf.image.resize(result_image, (1200, 1200))
    result_image = tf.keras.preprocessing.image.array_to_img(result_image)
    # result_image.thumbnail((1200, 1200),Image.ANTIALIAS)
    result_image.resize((1200, 1200))
    print(result_image.size)
    bgimage = Image.new('L', (1200, 200))
    print(bgimage.size)
    result_image = Image.blend(bgimage, result_image, 0.6)
    result_image.save('result.jpg', file_format="jpg", dpi=(300, 300))
    return result_image
   


# In[10]:


app = Flask(__name__)


# In[11]:

@app.route('/')
def home():
    return render_template('home.html')

    
@app.route('/predict')
def return_image_letter():
    
    letter = request.args.get('letter')
    letters = ''
    if check_input_validation(letter):
        img = get_image(letter)
        img.save('result.png')
        return send_file('result.png')
    else:
        return 'Input is incorrect!'
    
if __name__ == '__main__':
    app.debug = True
    app.run()


# In[12]:





# In[ ]:




