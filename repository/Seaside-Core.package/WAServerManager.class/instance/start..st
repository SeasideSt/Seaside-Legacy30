starting/stopping
start: aServerAdaptor
	(self canStart: aServerAdaptor) ifTrue: [ aServerAdaptor basicStart ]