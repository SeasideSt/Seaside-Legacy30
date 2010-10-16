versions
version10alpha1: spec
	<version: '1.0-alpha1' imports: #('1.0-alpha1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'alpha'.
		spec author: 'dkh'.
		spec timestamp: '11/12/2009 09:41'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-obi.3';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-jf.1'.].
	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-jf.1';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-jf.1'.].
	spec for: #'gemstone' do: [
		spec
			project: 'UTF8' with: '0.233';
			project: 'System-Digital-Signatures' with: '0.233'.
		spec 
			package: 'Grease-GemStone-Core' with: 'Grease-GemStone-Core-dkh.5';
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.3'.].