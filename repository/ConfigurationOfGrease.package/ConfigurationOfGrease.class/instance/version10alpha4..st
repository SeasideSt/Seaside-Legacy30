versions
version10alpha4: spec
	<version: '1.0-alpha4' imports: #('1.0-alpha2-baseline' )>

	spec for: #common do: [
		spec blessing: #alpha.
		spec description: '- pick up latest developer package versions (1/22/2010 12:06)"
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '1/22/2010 12:08'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-jf.14';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-jok.17'.].
	spec for: #squeakCommon do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-jf.7';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-jf.5'.].
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