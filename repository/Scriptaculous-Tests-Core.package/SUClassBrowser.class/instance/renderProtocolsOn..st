rendering
renderProtocolsOn: html 
	html select
		size: 5;
		id: 'protocolList';
		selected: protocol;
		list: self protocols;
		callback: [ :value | self setProtocol: value ];
		onChange: (html scriptaculous updater
			id: 'selectors';
			triggerFormElement: 'protocolList';
			on: #renderSelectorsOn: of: self;
			onSuccess: (html scriptaculous updater
				id: 'source';
				on: #renderSourceOn: of: self))