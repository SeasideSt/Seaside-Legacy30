scripts
draggable: aBeforeItem and: anAfterItem on: html
	^ html draggable
		revert: true;
		endEffect: nil;
		startEffect: nil;
		onStart: ((SUStream on: 'var splitter = drag.element;',
								self initOffsetScript ,'
								drag._previous = splitter.previous();
								drag._next = splitter.next();')
			asFunction: #(drag))