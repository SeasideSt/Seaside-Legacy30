protected
ping
	"Ping all the associated handlers."

	self mutex critical: [ handlers := handlers select: [ :each | each push: ' ' ] ]