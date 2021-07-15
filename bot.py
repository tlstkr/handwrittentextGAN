import telebot
import config
import model
# -*- coding: utf-8 -*-


bot = telebot.TeleBot(config.TOKEN)

@bot.message_handler(commands = ['start'])
def start(message):
    bot.send_message(message.chat.id, 'Hello! I am the handwritten text generation bot using machine learning. So, send me a text to generate it into handwritten: ')

@bot.message_handler(content_types = ['text'])
def predict(message):

    message.text = message.text.lower()
    text_validation = model.check_input_validation(message.text)
    if text_validation == True:
        model.generate_result(message.text)
        bot.send_photo(message.chat.id, photo=open('result.png', 'rb'))

    else:
        bot.send_message(message.chat.id, 'Prohibited chars: ' + text_validation)
    
        

if __name__ == "__main__":
    bot.polling(none_stop = True)