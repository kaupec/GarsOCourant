require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe( 
  access_token: ENV["ACCESS_TOKEN"], 
  subscribed_fields: ['messages', 'message_deliveries']
)

Bot.on :message do |message|
  message.reply(text: 'Démarre ta mère!')
end