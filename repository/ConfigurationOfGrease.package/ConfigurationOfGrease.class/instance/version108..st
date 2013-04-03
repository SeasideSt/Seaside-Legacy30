versions
version108: spec
	<version: '1.0.8' imports: #('1.0.8-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'Seaside 3 for Pharo 2.0 and Squeak 4.4'.
		spec author: 'topa'.
		spec timestamp: '4/03/2013 13:39'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-NickAger.70';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.80'. ].

	spec for: #'squeakCommon' do: [
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-JohanBrichau.52';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-lr.13';
			package: 'Grease-Slime' with: 'Grease-Slime-topa.15';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-JohanBrichau.11';
			package: 'Grease-Pharo13-Core' with: 'Grease-Pharo13-Core-dkh.1'. ].
	
	spec for: #( #'pharo1.0.x' #'pharo1.1.x') do: [
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.13';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.9'. ].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.4'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.246.1';
			project: 'SMTPMail' with: '0.241.1';
			project: 'UTF8' with: '0.241.1';
			project: 'System-Digital-Signatures' with: '0.241.1'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-dkh.48';
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
