versions
version10alpha3: spec
	<version: '1.0-alpha3' imports: #('1.0-alpha2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'alpha'.
		spec description: '- pick up latest developer package versions (12/8/2009 16:14)"
'.
		spec author: 'dkh'.
		spec timestamp: '12/23/09 16:52:29'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-dkh.8';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-jf.7'.].
	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-dkh.4';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-dkh.2'.].
	spec for: #'gemstone' do: [
		spec 
			project: 'SMTPMail' with: '0.233';
			project: 'UTF8' with: '0.233';
			project: 'System-Digital-Signatures' with: '0.233'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-dkh.12';
					postLoadDoIt: #'initializeNewRandomCaches10alpha3'. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.5'.].
	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'.].