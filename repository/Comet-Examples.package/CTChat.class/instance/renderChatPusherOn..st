rendering-chat
renderChatPusherOn: html
	html script: (html comet
		pusher: self pusher;
		connect)