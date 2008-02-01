scripts
draggable: aBeforeItem and: anAfterItem on: html
	^ html draggable
		revert: true;
		endEffect: nil;
		startEffect: nil;
		onStart: ((SUStream on: 'drag._originalLeft=drag.element.offsetLeft;drag._originalRight=drag.element.offsetRight;')
			asFunction: #(drag))