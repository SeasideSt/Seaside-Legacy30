rendering
renderStatisticsOn: html 
	html heading
		level: 2;
		with: 'Statistics'.
	html preformatted: SeasidePlatformSupport vmStatisticsReportString.
	html anchor
		callback: [ WAAdmin clearSessions ];
		with: 'Clear Sessions'