load scripts
writeLoadScripts
	loadScripts isEmpty ifFalse: [ super writeLoadScripts ]