rendering
draggable: aBeforeItem and: anAfterItem on: html
	^ (super draggable: aBeforeItem and: anAfterItem on: html)
		constraintHorizontal;
		onDrag: (SUStream on: '
				var splitter = arguments[0].element;
				offset = splitter.offsetLeft - arguments[0]._originalLeft;
				arguments[0]._originalLeft = splitter.offsetLeft;
				leftElement = arguments[0]._previous;
				leftWidth = leftElement.offsetWidth + offset;
				rightElement = arguments[0]._next;
				rightWidth = rightElement.offsetWidth - offset;
				if (leftWidth > 100 && rightWidth > 100) {
					leftElement.style.width = leftWidth + "px";
					rightElement.style.width = rightWidth + "px";
				}');
		onEnd: (html request
			callback: [ :value | aBeforeItem size: value ]
				value: (SUStream on: 'arguments[0].element.previous().offsetWidth + ''px''');
			callback: [ :value | anAfterItem size: value ]
				value: (SUStream on: 'arguments[0].element.next().offsetWidth + ''px'''))