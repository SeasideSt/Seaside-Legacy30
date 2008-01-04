rendering-chat
renderChatInputOn: html
	html textArea
		id: 'input';
		callback: [ :value | self message: value ];
		onEnter: (html request
			triggerFormElement: 'input';
			onSuccess: (html formElement
				id: 'input';
				clear))