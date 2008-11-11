private
before
	super before.
	legend ifNotNil: [ canvas legend: legend ]