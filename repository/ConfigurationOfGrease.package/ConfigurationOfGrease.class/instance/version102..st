versions
version102: spec
	<version: '1.0.2' imports: #('1.0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '- pick up latest mcz files'.
		spec author: 'pmm'.
		spec timestamp: '11/21/2010 12:35'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-pmm.52';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.63'.].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-pmm.32';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-pmm.8'.].

	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: '1.4'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.7';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.6'.].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.3'.].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.241';
			project: 'SMTPMail' with: '0.237';
			project: 'UTF8' with: '0.237';
			project: 'System-Digital-Signatures' with: '0.237'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-NickAger.28';
					postLoadDoIt: #'initializeNewRandomCaches10alpha3'. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-DaleHenrichs.8'.].

	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'.].

	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-DaleHenrichs.2'.].

	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'.].
