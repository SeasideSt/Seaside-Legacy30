versions
version10rc: spec
	<version: '1.0-rc' imports: #('1.0-rc-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '- Grease 1.0 release candidate
- port Grease to GemStone 3.0
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '07/27/10 12:49:44'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-pmm.42';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-DaleHenrichs.58'.].
	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-DaleHenrichs.24';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-jok.7'.].
	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: '1.3'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-jok.5';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-jok.5'.].
	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.241';
			project: 'SMTPMail' with: '0.237';
			project: 'UTF8' with: '0.237';
			project: 'System-Digital-Signatures' with: '0.237'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-DaleHenrichs.21';
					postLoadDoIt: #'initializeNewRandomCaches10alpha3'. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-DaleHenrichs.8'.].
	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'.].
	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-DaleHenrichs.2'.].
	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'.].