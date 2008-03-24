accessing
default
	^ default ifNil: [ default := self named: SeasidePlatformSupport defaultDispatcherName ]