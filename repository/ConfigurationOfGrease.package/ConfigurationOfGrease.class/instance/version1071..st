versions
version1071: spec
	<version: '1.0.7.1' imports: #('1.0.7.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '- Port Grease to Pharo2.0.
- BlockContext class no longer exists in Pharo2.0, so the BlockContext extension methods only needed for Pharo1.3 and earlier
- Slime not ported to Pharo2.0, yet, so exclude
-GemStone 3.1 support for libICU (Unicode)'.
		spec author: 'dkh'.
		spec timestamp: '5/23/2012 17:21'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-NickAger.70';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.80'. ].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-dkh.50';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-lr.13'. ].

	spec for: #'pharo1.x' do: [
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.14';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.10';
			package: 'Grease-Pharo13-Core' with: 'Grease-Pharo13-Core-dkh.1'. ].

	spec for: #'squeak' do: [
		spec 
			package: 'Grease-Pharo13-Core' with: 'Grease-Pharo13-Core-dkh.1'. ].
	
	spec for: #'pharo1.1.x' do: [
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.13';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.9'. ].

	spec for: #'pharo1.0.x' do: [
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.13';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.9'. ].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.4'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.246';
			project: 'SMTPMail' with: '0.241';
			project: 'UTF8' with: '0.241';
			project: 'System-Digital-Signatures' with: '0.241'.
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
