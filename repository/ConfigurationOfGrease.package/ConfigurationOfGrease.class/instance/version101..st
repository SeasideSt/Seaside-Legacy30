versions
version101: spec
	<version: '1.0.1' imports: #('1.0.1-baseline' )>

	spec for: #common do: [
		spec blessing: #development.
		spec description: '- 1.0 final'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '10/11/2010 14:46'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-lr.48';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.60'.].
	spec for: #squeakCommon do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-lr.29';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-pmm.8'.].
	spec for: #pharo do: [
		spec project: 'Refactoring-Core' with: '1.4'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-jok.5';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-jok.5'.].
	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-pmm.2'].
	spec for: #gemstone do: [
		spec 
			project: 'GsCore' with: '0.241';
			project: 'SMTPMail' with: '0.237';
			project: 'UTF8' with: '0.237';
			project: 'System-Digital-Signatures' with: '0.237'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-DaleHenrichs.26';
					postLoadDoIt: #initializeNewRandomCaches10alpha3. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-DaleHenrichs.8'.].
	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'.].
	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-DaleHenrichs.2'.].
	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'.].