rendering
renderHeaderOn: html
	html heading
		level: 1;
		class: 'logo';
		with: [ html span: 'Seaside' ].
	html heading
		level: 2;
		class: 'welcome';
		with: [ html span: self title ].
	html paragraph
		class: 'congrats';
		with: [ html span: self congrats ]