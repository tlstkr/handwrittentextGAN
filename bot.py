import telebot
#from telebot.apihelper import send_message
import config
import model


bot = telebot.TeleBot(config.TOKEN)

@bot.message_handler(commands = ['start'])
def start(message):
    bot.send_message(message.chat.id, 'Hello! I am the handwritten text generation bot using machine learning. Unfortunately, as for now I\'m small and can generate word by word. I am only learning to generate big textes. So, send me a word to generate it into handwritten: ')

@bot.message_handler(content_types = ['text'])
def predict(message):

    message.text = message.text.lower()
    if model.check_input_validation(message.text):
        model.generate_result(message.text)
        bot.send_photo(message.chat.id, photo=open('result.jpg', 'rb'))
    else:
        bot.send_message(message.chat.id, 'Please, send me a text containing only characters and spaсes')
        

if __name__ == "__main__":
    bot.polling(none_stop = True)