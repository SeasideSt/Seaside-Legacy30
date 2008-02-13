rendering
renderNavigationOn: html
	"reset offset for each full refresh"
	| theExtent clipExtent |
	offset := 1.
	theExtent := self componentExtent.
	clipExtent := self clipExtent.
	html div class: self cssClass;
		style: 'padding-top:5px; height:', theExtent y asString, 'px;width:', theExtent x asString ,'px' ;
		with: [self renderPreviousButtonOn: html.
				html div class: 'clip-region';
				style: 'height:', clipExtent y asString, 'px;width:', clipExtent x asString ,'px' ;
				id: 'clip_', uid;
				with: [self renderNavElementsOn: html ].
			self renderNextButtonOn: html.]