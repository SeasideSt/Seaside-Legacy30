initializing
initializeFilters
	self addFilter: WAMonitorFilter new.
	self addFilter: WAEscapeFilter new.
	self addFilter: WAExceptionFilter new