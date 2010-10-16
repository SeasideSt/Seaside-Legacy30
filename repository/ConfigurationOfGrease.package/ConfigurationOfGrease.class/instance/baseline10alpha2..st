baselines
baseline10alpha2: spec 
	<version: '1.0-alpha2-baseline' imports: #('1.0-alpha1-baseline' )>

	spec for: #gemstone do: [
		spec
			project: 'SMTPMail'
				copyFrom: 'UTF8'
				with: [ spec loads: #('SMTPMail' ) ];			
			yourself.
		spec 
			package: 'Grease-GemStone-Core' 
				with: [ spec requires: #('SMTPMail' ) ];
			yourself. ].
	spec for: #'gs2.3.x' do: [
		spec 
			package: 'Grease-GemStone-Core' 
				with: [ spec includes: #('Grease-GemStone230-Core' ) ];
			package: 'Grease-GemStone230-Core' 
				with: [ spec requires: #('Grease-GemStone-Core' ) ];
			yourself. ].
