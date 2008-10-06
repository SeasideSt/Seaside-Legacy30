rendering
renderVFieldSetOn: html
	html fieldSet
		legend: 'Various text rendering in a fieldset';
		with: [
			html
				strong: 'Strong';
				break;
				emphasis: 'Emphasis';
				break.
			html acronym
				title: 'United States of America';
				with: 'USA'.
			html
				break;
				emphasis: 'Emphasis';
				break.

			html div
				style: 'color: red';
				style: 'background-color: lightgreen';
				style: 'padding: 1em';
				style: 'border: solid 2px black';
				style: 'font-weight: bold';
				style: 'font-size: 150%';
				style: 'height: 3em';
				style: 'text-align: center';
				with: 'Large bold red in a green div'.
			html
				break]