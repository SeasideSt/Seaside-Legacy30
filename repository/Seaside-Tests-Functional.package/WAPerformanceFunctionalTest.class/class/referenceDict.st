accessing
referenceDict
	| dict |
	dict := Dictionary new.
	dict at: #anchor put: 'Anchor Test' -> 360.
	dict at: #script put: 'Script Test' -> 2100.
	dict at: #table put: 'Table Test' -> 2110.
	dict at: #lineBreak put: 'Line Break Test' -> 2100.
	dict at: #callback put: 'Callback Test' -> 1012.
	dict at: #form put: 'Form Test' -> 103.
	dict at: #id put: 'Generate ID''s Test' -> 1884.
	dict at: #seasideText put: 'Seaside Text Rendering Test' -> 2796.
	dict at: #nativeText put: 'Native Text Rendering Test' -> 34000.
	dict at: #seasideBR put: 'Seaside (br) Rendering Test' -> 11091.
	dict at: #nativeBR put: 'Native (br) Rendering Test' -> 56600.
	^dict