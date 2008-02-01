rendering
draggable: aBeforeItem and: anAfterItem on: html
	^ (super draggable: aBeforeItem and: anAfterItem on: html)
		constraintHorizontal;
		onChange: (SUStream on: '
				offset = arguments[0].element.offsetLeft - arguments[0]._originalLeft;
				arguments[0]._originalLeft = arguments[0].element.offsetLeft;
				
				leftElement = arguments[0].element.previous();
				leftWidth = leftElement.offsetWidth + offset;
				
				rightElement = arguments[0].element.next();
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