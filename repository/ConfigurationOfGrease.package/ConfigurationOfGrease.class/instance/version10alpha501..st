versions
version10alpha501: spec
	<version: '1.0-alpha5.1' imports: #('1.0-alpha5-baseline' )>

	spec for: #common do: [
		spec blessing: #alpha.
		spec description: '- pick up latest developer package versions (1/22/2010 12:06)"
'.
		spec author: 'dkh'.
		spec timestamp: '1/27/2010 15:01'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-jok.15';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-jok.22'.].
	spec for: #squeakCommon do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-jf.8';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-jf.5'.].
	spec for: #pharo do: [
		spec project: 'Refactoring-Core' with: '1.1'.
		spec
			package: 'Grease-Slime' with: 'Grease-Slime-jok.2';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-jok.1'. ].
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