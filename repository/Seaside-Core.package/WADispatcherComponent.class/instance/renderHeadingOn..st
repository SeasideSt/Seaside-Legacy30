rendering
renderHeadingOn: html
	html anchor
		class: 'logo';
		url: 'http://www.seaside.st';
		with: 'Seaside'.
	html div 
		class: 'version';
		with: SeasidePlatformSupport versionString