rendering
renderContentOn: html
	html table
		script: (html jQuery this
			bind: 'refresh' do: (html jQuery this load
				html: [ :h | self renderTableOn: h ]));
		with: [ self renderTableOn: html ].
	html document 
		addLoadScript: (html comet
			pusher: self pusher;
			connect)