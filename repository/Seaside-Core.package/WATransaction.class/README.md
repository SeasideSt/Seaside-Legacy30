WATransaction ensures that the component it decorates is not repeated once the "transaction" is completed. For example once a user has submitted an order you don't want them to use the web browser's back button to accidentally resubmit the order. WATransaction does not support rollbacks.

Normally you will not use this class directly. Instead use WAComponent>>isolate: in a task.

Instance Variables:
	active	<Boolean>	false indicates the transaction is over.
