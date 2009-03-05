rendering-chat
renderChatInputOn: html
	html textArea
		id: 'input';
		callback: [ :value | self message: value ];
		onEnter: (html scriptaculous request
			triggerFormElement: 'input';
			onSuccess: (html scriptaculous formElement
				id: 'input';
				clear))