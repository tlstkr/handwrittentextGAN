#!/usr/bin/env python
# coding: utf-8

# In[7]:


import tensorflow as tf
import numpy as np
from PIL import Image


# In[8]:


def check_input_validation(text):
    chars = ''
    for i in text:
        if i not in 'abcdefghijklmnopqrstuvwxyz ':
            chars += i
    if len(chars) == 0:
        return True
    else:
        return chars



# In[9]:


models = {}
def get_image(letter):

    if letter not in list(models.keys()):
        models[letter] = tf.keras.models.load_model('generators/'+letter+'_generator')
        
    fixed_noise = np.random.normal(0, 1, size=(100, 100))
    imgs = models[letter].predict(fixed_noise)
    img = imgs[np.random.randint(1,len(imgs))-1]
    img = tf.image.resize(img, (28, 28), antialias=True)
    # print("letter:", img.size)
    return img



def generate_result(text):
    
    text = text.lower()
    
    string_len = int(np.sqrt(len(text)))
    
    if string_len < 20:
        string_len = 20
        
    if len(text) < 20:
        string_len = len(text)
    
    def break_text(text, string_len = 28):
        
        strings = []
        string = ''
        words = text.split()
        
        for word in words:
            if len(word) < string_len:
                if len(string + word) <= string_len:
                    string += word 
                    if len(string) < string_len:
                        string += ' '
                    
                elif len(string + word) == string_len:
                    string += word
                    
                else:
                    strings.append(string)
                    string = word + ' '
            
            elif len(word) == string_len:
                if len(string) > 0:
                    strings.append(string)
                string = word
            else:
                if len(string) > 0:
                    strings.append(string)
                    
                if len(word) > string_len:
                    for i in range(int(len(word) / string_len)):
                        strings.append(word[string_len * i : string_len * (i+1)])
                        
                string = word[-(len(word) % string_len):] + ' '
        strings.append(string)

        return strings
    
    def generate_string(string, string_len = 28):
        
        space = np.full((28,28,1), -1)
        result = space
        chars = 0
        
        for char in string:
            if char == ' ':
                result = np.concatenate((result, space), axis = 1)
            else:
                result = np.concatenate((result, get_image(char)), axis = 1)
            chars += 1
        
        extra_space = np.full((28, 28 * (string_len - chars), 1), -1)
        result = np.concatenate((result, extra_space), axis = 1)
        return result

    
    
    strings = []
    strings.append(np.full((28,28 * (string_len + 1),1), -1))
    for string in break_text(text, string_len):
        strings.append(generate_string(string, string_len))

    strings.append(np.full((28,28 * (string_len + 1),1), -1))
    result_image = np.concatenate(strings, axis=0)
    result_image = tf.keras.preprocessing.image.array_to_img(result_image)
    
    result_image.save('result.png')


