private
buildTable
	^WATableReport new
		rowPeriod: 1;
		rowColors: #( '#eee' 'white' );
		rows: self notifications;
		columns: (Array
			with: (WAReportColumn selector: #messageText title: 'Deprecated')
			with: (WAReportColumn new
						title: 'Detail';
						valueBlock: [:each | each details isNil ifTrue: [''] ifFalse: [each details] ];
						yourself));
		yourself