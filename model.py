#!/usr/bin/env python
# coding: utf-8


import tensorflow as tf
import numpy as np
from PIL import Image


def check_input_validation(word):
    iter = 0
    for i in word:
        if i in 'abcdefghijklmnopqrstuvwxyz ':
            iter += 1
    return iter == len(word)

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
   


