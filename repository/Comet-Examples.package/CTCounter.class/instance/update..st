private
update: anAspect
	"Update the number in all connected web browser. Only the first 4 lines are really needed, the rest adds some eye-candy and can simply be removed if not needed."

	self pusher javascript: [ :script |
		script element
			id: 'count';
			update: self model count.
		script element
			id: 'count';
			insertBottom: [ :html |
				html span id: 'trend'; with: [
					html html: (anAspect = #increase
						ifTrue: [ '&uarr;' ]
						ifFalse: [ '&darr;' ]) ] ].
		script effect
			id: 'trend';
			fade ]