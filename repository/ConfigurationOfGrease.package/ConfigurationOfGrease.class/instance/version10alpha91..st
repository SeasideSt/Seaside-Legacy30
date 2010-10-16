versions
version10alpha91: spec
	<version: '1.0-alpha9.1' imports: #('1.0-alpha7-baseline' )>

	spec for: #common do: [
		spec blessing: #alpha.
		spec description: '- pick up latest developer package versions Pharo1.1 compat (5/14/2010 13:29)
- pick up latest Refactoring-Core
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '5/14/2010 13:47'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-lr.37';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-lr.50'.].
	spec for: #squeakCommon do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-jok.18';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-jok.7'.].
	spec for: #pharo do: [
		spec project: 'Refactoring-Core' with: '1.3'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-jok.5';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-jok.5'.].
	spec for: #gemstone do: [
		spec blessing: #broken.
		spec description: 'NOT PORTED TO GEMSTONE'.
		spec 
			project: 'SMTPMail' with: '0.233';
			project: 'UTF8' with: '0.233';
			project: 'System-Digital-Signatures' with: '0.233'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-dkh.12';
					postLoadDoIt: #initializeNewRandomCaches10alpha3. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.5'.].
	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'.].