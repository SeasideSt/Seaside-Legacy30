private
receipents
	^ self to , self cc , self bcc collect: [ :each | each greaseString ]