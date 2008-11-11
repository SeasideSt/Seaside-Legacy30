private
after
	super after.
	callback ifNotNil: [
		canvas hiddenInput callback: [
			callback value: value.
			value := false ] ]