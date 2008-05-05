scripts
draggable: aBeforeItem and: anAfterItem on: html
	^ (super draggable: aBeforeItem and: anAfterItem on: html)
		constraintVertical;
		onDrag: (SUStream on: '
				var splitter = arguments[0].element;
				offset = splitter.offsetTop - arguments[0]._originalTop;
				arguments[0]._originalTop = splitter.offsetTop;
				leftElement = arguments[0]._previous;
				leftHeight = leftElement.offsetHeight + offset;
				rightElement = arguments[0]._next;
				rightHeight = rightElement.offsetHeight - offset;
				if (leftHeight > ' , aBeforeItem min asString, ' && rightHeight > ' , anAfterItem min asString, ') {
					leftElement.style.height = leftHeight + "px";
					rightElement.style.height = rightHeight + "px";
				}');
		onEnd: (html request
			callback: [ :value | aBeforeItem size: value ]
				value: (SUStream on: 'arguments[0].element.previous().offsetHeight + ''px''');
			callback: [ :value | anAfterItem size: value ]
				value: (SUStream on: 'arguments[0].element.next().offsetHeight + ''px'''))