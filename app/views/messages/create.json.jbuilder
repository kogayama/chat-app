json.content @message.content
json.image @message_image
json.use_name @message.user_name
json.created_at @message.created_at_strftime(("%Y年%m月%d日 %H時%M分")