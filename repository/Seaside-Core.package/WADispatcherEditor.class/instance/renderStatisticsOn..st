rendering
renderStatisticsOn: html
	html heading level2; with: 'Statistics'.
	html preformatted: SeasidePlatformSupport vmStatisticsReportString.
	html anchor callback: [ self clearCaches ]; with: 'Clear Caches'