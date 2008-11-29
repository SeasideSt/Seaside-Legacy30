rendering
renderContentOn: html
		html paragraph: 'Window answer test'.
		html paragraph: [
			html anchor
				onClick: (html evaluator callback: [:s | answerBlock value: s]);
				with: 'OK']