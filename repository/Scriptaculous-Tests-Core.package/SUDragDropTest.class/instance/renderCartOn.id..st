rendering
renderCartOn: html id: cartId
	html div
		class: 'cart';
		id: cartId;
		script: (html droppable
			accept: 'inventory-item';
			hoverclass: 'hover';
			onDrop: (html updater
				id: cartId;
				triggerPassenger: [ :value | self cart add: value ];
				callback: [ :renderer | self renderCartItemsOn: renderer ]));
		with: [ self renderCartItemsOn: html ]