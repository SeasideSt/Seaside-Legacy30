accessing-bounds
componentExtent
	| clipExtent |
	clipExtent := self clipExtent.
	^Point x: clipExtent x + (navMargin * 2) y: clipExtent y + 10.