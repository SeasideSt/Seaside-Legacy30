private
after
	super after.
	canvas div: [
		canvas actionUrl parameters keysAndValuesDo: [ :k :v |
			canvas hiddenInput
				name: k;
				value: v ] ]