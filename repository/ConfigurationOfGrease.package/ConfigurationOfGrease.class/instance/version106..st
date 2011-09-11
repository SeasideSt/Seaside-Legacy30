versions
version106: spec
	<version: '1.0.6' imports: #('1.0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '1.0.6 (dkh.153):
- open 1.0.6 for development
- update to latest packages (http://code.google.com/p/seaside/wiki/Seaside306Changelog)
- update GRPlatform version to 1.0.6
1.0.6 (dkh.154) [GEMSTONE]:
- merge Grease-GemStone-Core-NickAger.43
1.0.6 (dkh.155) [GEMSTONE]:
- fix Issue 290: transactionMutex is always nil
  http://code.google.com/p/glassdb/issues/detail?id=290
- fix Issue 287: Pick up GsMisc v.0239.1
  http://code.google.com/p/glassdb/issues/detail?id=287'.
		spec author: 'dkh'.
		spec timestamp: '09/02/2011 17:03:50'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-dkh.65';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.78'. ].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-pmm.43';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-lr.13'. ].

	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.13';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.9'. ].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.4'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.245';
			project: 'SMTPMail' with: '0.239.1';
			project: 'UTF8' with: '0.239.1';
			project: 'System-Digital-Signatures' with: '0.239.1'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-dkh.44';
					postLoadDoIt: #'initializeTransactionMutex1051'. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.14'. ].

	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'. ].

	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-dkh.3'. ].

	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'. ].
