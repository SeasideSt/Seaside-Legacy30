description
buildDescription
	| d |
	d := WAConfigurationDescription new.
	d configuration: self.
	self describeOn: d.
	^ description := d