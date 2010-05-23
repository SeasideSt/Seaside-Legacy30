rendering
renderExperiencedUserOn: html
	html div
		class: #experiencedUser;
		with: [
			html heading level2 with: 'Experienced Seaside Developers'.
			html unorderedList: [
				html listItem with: [
					html anchor url: '/browse'; with: 'Browse'.
					html text: ' the applications installed in your image.'
					].
				
				html listItem with: [
					html anchor url: '/javascript/jquery'; with: 'JQuery'.
					html text: ', the new JQuery Seaside integration.'
					].

				html listItem with: [
					html anchor url: '/javascript/jquery-ui'; with: 'JQuery UI'.
					html text: ',	 the new JQuery UI Seaside integration.'
					]
				]
			].
		
