baselines
baseline10alpha1: spec 
	<version: '1.0-alpha1-baseline'>

	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Seaside30'.
		spec
			package: 'Grease-Core';
			package: 'Grease-Tests-Core' 
				with: [ spec requires: #('Grease-Core' ). ];
			yourself. ].

	spec for: #squeakCommon do: [
		spec
			package: 'Grease-Core' 
				with: [ spec includes: #('Grease-Pharo-Core' ) ];
			package: 'Grease-Tests-Core' 
				with: [ spec includes: #('Grease-Tests-Pharo-Core' ). ];
			package: 'Grease-Pharo-Core' 
				with: [ spec requires: #('Grease-Core' ) ];
			package: 'Grease-Tests-Pharo-Core' 
				with: [ spec requires: #('Grease-Tests-Core') ];					
			yourself. ].
	spec for: #gemstone do: [
		spec 
			repository: 'http://seaside.gemstone.com/ss/Seaside30'.

		spec 
			project: 'UTF8' with: [
				spec
					className: 'ConfigurationOfGsMisc';
					versionString: '0.233';
					loads: #('Utf8Encoding' );
					file: 'ConfigurationOfGsMisc';
					repository: 'http://seaside.gemstone.com/ss/GLASSproject' ];
			project: 'System-Digital-Signatures'
				copyFrom: 'UTF8'
				with: [ spec loads: #('System-Digital-Signatures' ) ];
			yourself.

		spec
			package: 'Grease-Core' 
				with: [ spec includes: #('Grease-GemStone-Core' ) ];
			package: 'Grease-Tests-Core' 
				with: [ spec includes: #('Grease-Tests-GemStone-Core' ). ];
			package: 'Grease-GemStone-Core' 
				with: [ spec requires: #('Grease-Core' 'System-Digital-Signatures' 'UTF8' ) ];
			package: 'Grease-Tests-GemStone-Core' 
				with: [ spec requires: #('Grease-Tests-Core' ) ];
			yourself. ].
