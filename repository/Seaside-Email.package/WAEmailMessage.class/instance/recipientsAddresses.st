private
recipientsAddresses
	^ self to , self cc , self bcc collect: [ :each | each address ]