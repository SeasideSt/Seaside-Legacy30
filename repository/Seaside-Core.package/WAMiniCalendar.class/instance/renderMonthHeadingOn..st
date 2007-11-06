rendering
renderMonthHeadingOn: html
	html form: [
		html select
			list: self months;
			on: #month of: self;
			labels: [:eachMonth | eachMonth name].
		html textInput
			maxLength: 4;
			on: #year of: self.
		html submitButton text: 'Refresh' ]