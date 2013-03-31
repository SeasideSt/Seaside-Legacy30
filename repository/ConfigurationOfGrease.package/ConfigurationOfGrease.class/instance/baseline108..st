baselines
baseline108: spec
	<version: '1.0.8-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: ''.
		spec repository: 'http://www.squeaksource.com/Seaside30'.
		spec 
			package: 'Grease-Core';
			package: 'Grease-Tests-Core' with: [
				spec requires: #('Grease-Core' ). ].
		spec 
			group: 'Core' with: #('Grease-Core' );
			group: 'Core Tests' with: #('Grease-Tests-Core' );
			group: 'Slime' with: #('Core' );
			group: 'Slime Tests' with: #('Core Tests' );
			group: 'Tests' with: #('Core Tests' 'Slime Tests' );
			group: 'default' with: #('Slime' ).].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Core' with: [
				spec includes: #('Grease-Pharo-Core' ). ];
			package: 'Grease-Tests-Core' with: [
				spec includes: #('Grease-Tests-Pharo-Core' ). ];
			package: 'Grease-Pharo-Core' with: [
				spec requires: #('Grease-Core' ). ];
			package: 'Grease-Tests-Pharo-Core' with: [
				spec requires: #('Grease-Tests-Core' ). ].].

	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec 
			package: 'Grease-Slime' with: [
				spec requires: #('Refactoring-Core' 'Grease-Core' ). ];
			package: 'Grease-Tests-Slime' with: [
				spec requires: #('Grease-Slime' ). ].
		spec 
			group: 'Slime' with: #('Grease-Slime' );
			group: 'Slime Tests' with: #('Grease-Tests-Slime' ).].

	spec for: #'pharo1.x' do: [
		spec 
			package: 'Grease-Pharo-Core' with: [
				spec includes: #('Grease-Pharo13-Core' ). ];
			package: 'Grease-Pharo13-Core' ].

	spec for: #'squeak' do: [
		spec 
			package: 'Grease-Pharo-Core' with: [
				spec includes: #('Grease-Pharo13-Core' ). ];
			package: 'Grease-Pharo13-Core' ].

	spec for: #'GreaseForPharo1.0' do: [
		spec 
			package: 'Grease-Pharo-Core' with: [
				spec includes: #('Grease-Pharo10-Core' ). ];
			package: 'Grease-Pharo10-Core'.].

	spec for: #'gemstone' do: [
		spec repository: 'http://seaside.gemstone.com/ss/Seaside30'.
		spec 
			project: 'GsCore' with: [
				spec
					className: 'ConfigurationOfGsCore';
					versionString: #'stable';
					repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ];
			project: 'UTF8' with: [
				spec
					className: 'ConfigurationOfGsMisc';
					versionString: #'stable';
					loads: #('Utf8Encoding' );
					repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ];
			project: 'System-Digital-Signatures' copyFrom: 'UTF8' with: [
				spec loads: #('System-Digital-Signatures' ) ];
			project: 'SMTPMail' copyFrom: 'UTF8' with: [
				spec loads: #('SMTPMail' ) ].
		spec 
			package: 'Grease-Core' with: [
				spec 
					requires: #('GsCore' );
					includes: #('Grease-GemStone-Core' ). ];
			package: 'Grease-Tests-Core' with: [
				spec includes: #('Grease-Tests-GemStone-Core' ). ];
			package: 'Grease-GemStone-Core' with: [
				spec requires: #('Grease-Core' 'GsCore' 'System-Digital-Signatures' 'UTF8' 'SMTPMail' ). ];
			package: 'Grease-Tests-GemStone-Core' with: [
				spec requires: #('Grease-Tests-Core' ). ].].

	spec for: #'gs2.x' do: [
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec includes: #('Grease-GemStone200-Core' ). ];
			package: 'Grease-GemStone200-Core' with: [
				spec requires: #('Grease-GemStone-Core' ). ].].

	spec for: #'gs2.3.x' do: [
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec includes: #('Grease-GemStone230-Core' ). ];
			package: 'Grease-GemStone230-Core' with: [
				spec requires: #('Grease-GemStone-Core' ). ].].

	spec for: #'gs2.4.x' do: [
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec includes: #('Grease-GemStone240-Core' ). ];
			package: 'Grease-GemStone240-Core' with: [
				spec requires: #('Grease-GemStone-Core' ). ].].

	spec for: #'gs3.x' do: [
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec includes: #('Grease-GemStone300-Core' ). ];
			package: 'Grease-GemStone300-Core' with: [
				spec requires: #('Grease-GemStone-Core' ). ].].
