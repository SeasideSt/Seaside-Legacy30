baselines
baseline10alpha7: spec 
	<version: '1.0-alpha7-baseline'>

	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Seaside30'.
		spec
			package: 'Grease-Core';
			package: 'Grease-Tests-Core' 
				with: [ spec requires: #('Grease-Core' ). ];
			yourself.
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Grease-Core');
			group: 'Tests' with: #('Grease-Tests-Core');
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
			yourself.
		spec
			group: 'Core' with: #('Grease-Pharo-Core');
			group: 'Tests' with: #('Grease-Tests-Pharo-Core');
			yourself. ].

	spec for: #pharo do: [
		spec
			project: 'Refactoring-Core' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: '1.2-baseline';
					loads: #('Refactoring-Core' );
					file: 'ConfigurationOfRefactoringBrowser';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			yourself.
		spec
			package: 'Grease-Slime' 
				with: [ spec requires: #('Refactoring-Core' 'Grease-Core' ) ];
			package: 'Grease-Tests-Slime' 
				with: [ spec requires: #('Grease-Slime') ];					
			yourself.
		spec
			group: 'Core' with: #('Grease-Slime');
			group: 'Tests' with: #('Grease-Tests-Slime');
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
			project: 'SMTPMail'
				copyFrom: 'UTF8'
				with: [ spec loads: #('SMTPMail' ) ];			
			yourself.

		spec
			package: 'Grease-Core' 
				with: [ spec includes: #('Grease-GemStone-Core' ) ];
			package: 'Grease-Tests-Core' 
				with: [ spec includes: #('Grease-Tests-GemStone-Core' ). ];
			package: 'Grease-GemStone-Core' 
				with: [ spec requires: #('Grease-Core' 'System-Digital-Signatures' 'UTF8' 'SMTPMail' ) ];
			package: 'Grease-Tests-GemStone-Core' 
				with: [ spec requires: #('Grease-Tests-Core' ) ];
			yourself.
		spec
			group: 'Core' with: #('Grease-GemStone-Core');
			group: 'Tests' with: #('Grease-Tests-GemStone-Core');
			yourself. ].

	spec for: #'gs2.3.x' do: [
		spec 
			package: 'Grease-GemStone-Core' 
				with: [ spec includes: #('Grease-GemStone230-Core' ) ];
			package: 'Grease-GemStone230-Core' 
				with: [ spec requires: #('Grease-GemStone-Core' ) ];
			yourself.
		spec
			group: 'Core' with: #('Grease-GemStone230-Core');
			yourself. ].
