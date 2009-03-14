private
applicationDefaults
	^ WASharedConfiguration named: 'Application Defaults' ifNew: [ :config |
		config
			addParent: WARenderLoopConfiguration instance;
			at: #responseGenerator put: WAHtmlResponseGenerator ]