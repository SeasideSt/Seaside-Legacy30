packages
groups

	^OrderedCollection new
		addAll: self basicPackages;
		addAll: self traditionalPackages;
		add: self adminToolsPackages;
		add: self rssPackages;
		add: self javascriptPackages;
		add: self scriptaculousPackages;
		add: self htmlPackages;
		add: self internetExplorerPackages;
		add: self emailPackages;
		add: self comanchePackages;
		yourself.