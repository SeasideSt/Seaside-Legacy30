rendering
draggable: aBeforeItem and: anAfterItem on: html
	^ (super draggable: aBeforeItem and: anAfterItem on: html)
		constraintHorizontal;
		onDrag: (JSStream on: '
				var splitter = arguments[0].element;
				offset = splitter.offsetLeft - arguments[0]._originalLeft;
				arguments[0]._originalLeft = splitter.offsetLeft;
				leftElement = arguments[0]._previous;
				leftWidth = leftElement.offsetWidth + offset;
				rightElement = arguments[0]._next;
				rightWidth = rightElement.offsetWidth - offset;
				if (leftWidth > ' , aBeforeItem min asString, ' && rightWidth > ' ,anAfterItem min asString,') {
					leftElement.style.width = leftWidth + "px";
					rightElement.style.width = rightWidth + "px";
				}');
		onEnd: (html request
			callback: [ :value | aBeforeItem size: value ]
				value: (JSStream on: 'arguments[0].element.previous().offsetWidth + ''px''');
			callback: [ :value | anAfterItem size: value ]
				value: (JSStream on: 'arguments[0].element.next().offsetWidth + ''px'''))