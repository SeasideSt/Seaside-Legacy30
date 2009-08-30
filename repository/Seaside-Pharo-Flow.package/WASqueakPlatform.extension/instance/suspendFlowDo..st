*seaside-pharo-flow
suspendFlowDo: aBlock
	| continuation |
	continuation := WAPartialContinuation
		from: thisContext sender
		to: self callbackMarker.
	^ aBlock value: [ :answer |
		[ continuation value: answer ]
			on: WAMarkerRequest
			do: [ :request | request resume: self callbackMarker ] ]