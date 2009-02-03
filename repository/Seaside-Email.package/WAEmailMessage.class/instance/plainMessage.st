private
plainMessage
	^String streamContents: [ :stream |
		
		self
			renderAddress: self from
			withHeander: 'From: '
			on: stream.
			
		self to do: [ :each |
			self
				renderAddress: each
				withHeander: 'To: '
				on: stream ].
			
		self cc do: [ :each |
			self
				renderAddress: each
				withHeander: 'Cc: '
				on: stream ].
			
		self bcc do: [ :each |
			self
				renderAddress: each
				withHeander: 'Bcc: '
				on: stream ].
		stream
			nextPutAll: 'Subject: ';
			nextPutAll: self subject;
			nextPut: Character cr;
			nextPut: Character cr.
			
		self body isNil ifFalse: [
			stream nextPutAll: self body seasideString ] ]