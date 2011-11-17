versions
version1064: spec
	<version: '1.0.6.4' imports: #('1.0.6.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '1.0.6.4 (dkh.174):
- open 1.0.6.4 for development
- support for GemStone/S 2.4.5 release'.
		spec author: 'dkh'.
		spec timestamp: '11/17/2011 14:11'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-lr.66';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-lr.79'. ].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-lr.44';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-lr.13'. ].

	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.14';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.10'. ].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.4'. ].

	spec for: #'pharo1.1.x' do: [
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.13';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.9'. ].
	
	spec for: #'pharo1.0.x' do: [
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.13';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.9'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.245';
			project: 'SMTPMail' with: '0.239.1';
			project: 'UTF8' with: '0.239.1';
			project: 'System-Digital-Signatures' with: '0.239.1'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-dkh.47';
					postLoadDoIt: #'initializeTransactionMutex1051'. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.14'. ].

	spec for: #'gs2.x' do: [
		spec package: 'Grease-GemStone200-Core' with: 'Grease-GemStone200-Core-dkh.2'. ].

	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.4'. ].

	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-dkh.3'. ].

	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-dkh.4'. ].
