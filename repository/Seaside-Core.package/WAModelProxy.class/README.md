I am a fake object that can be interposed between the real model object and the client, so that the data can be validated or collected before commiting to the real model.

If you have a model instance like

	model := WAStoreAddress new.
	model street: 'Rathausgasse 34'.

create a model proxy by evaluating the following code:

	proxy := WAModelProxy on: model.
	
Then use the accessors of the proxy as you would do with your model:

	proxy country: 'Switzerland'.
	proxy street -> 'Rathausgasse 34'
	...
	
To propagate the values into your model send #commit :

	proxy commit.
	model country -> 'Switzerland'