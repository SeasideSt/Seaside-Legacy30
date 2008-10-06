rendering
renderActionsOn: html
	html paragraph: [
		html anchor
			url: self session newSessionUrl;
			 with: 'New Session'.
		html break.
		html anchor
			callback: [ self session expire ];
			 with: 'Expire'.
		html break.
		html anchor
			callback: [ WAExpirySession resetCounters ];
			 with: 'Reset Counters'.
		html break.
		html anchor
			callback: [ Smalltalk garbageCollect ];
			 with: 'Garbage Collect'.
		html break.
		html anchor
			callback: [
				self application clearHandlers.
				Smalltalk garbageCollect ];
			 with: 'Clear Handlers'.
		html break.
		html anchor
			callback: [
				self application clearHandlers.
				WAExpirySession resetCounters.
				Smalltalk garbageCollect ];
			 with: 'Reset All' ]. 
	html form: [
		html div: [
			html text: 'Expiry seconds:'.
			html textInput
				value: self session sessionExpirySeconds;
				callback: [ :value | self session timeoutSeconds: value asInteger ].
			html space.
			html submitButton
				text: 'Change' ] ]