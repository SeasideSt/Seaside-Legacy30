A WADelayedSend is a future message send of a message to an object. Some of the arguments can be predefined. Instances are intended to be interchangeable with blocks.

This class should conform the ANSI valuable protocol.

This is an abstract class. Use the methods in the 'instance-creation' protocol on the class side to create intances.

Instance Variables
	receiver:		<Object>
	selector:		<Symbol>

receiver
	- the object receiving the message

selector
	- the message selector sent to the receiver
