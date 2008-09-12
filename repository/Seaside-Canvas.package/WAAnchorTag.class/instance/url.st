accessing
url
	^ url ifNil: [ url := canvas context actionUrl copy ]