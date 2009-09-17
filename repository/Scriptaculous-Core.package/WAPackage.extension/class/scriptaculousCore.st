*scriptaculous-core
scriptaculousCore
	^ self new
		name: 'Scriptaculous-Core';
		description: 'script.aculo.us integration for Seaside. script.aculo.us provides you with easy-to-use, cross-browser user interface JavaScript libraries to make your web sites and web applications fly.';
		addDependency: 'Prototype-Core';
		addDependency: 'Seaside-Widgets';  "SUDatePicker subclasses WAMiniCalendar"
		yourself