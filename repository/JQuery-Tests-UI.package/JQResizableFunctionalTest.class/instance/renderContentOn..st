rendering
renderContentOn: html
	html div id: #resizer; style: 'height: 20px; background-color: red;'.
	html session addLoadScript: (html jQuery id: #resizer) resizable