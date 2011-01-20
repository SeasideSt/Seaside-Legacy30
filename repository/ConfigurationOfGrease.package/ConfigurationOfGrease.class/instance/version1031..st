versions
version1031: spec
	<version: '1.0.3.1' imports: #('1.0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '- open 1.0.3.1 for development
- get Seaside3.0 running on GemStone3.0beta3
- fix Issue 212: http://code.google.com/p/glassdb/issues/detail?id=212 FileDirectory class>>onClient switched sense" [GemStone]
- ANSI block behavior means that GemStone3.0 passes GRNumberTest>>testToDoClosures
- wait for GemStone bugs 41222 and 41223 to be fixed to pass remaining tests'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '01/20/2011 11:01:37'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-DaleHenrichs.53';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.63'. ].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-pmm.32';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-pmm.8'. ].

	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: '1.4'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-lr.7';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-lr.6'. ].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.3'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.244';
			project: 'SMTPMail' with: '0.238';
			project: 'UTF8' with: '0.238';
			project: 'System-Digital-Signatures' with: '0.238'.
		spec 
			package: 'Grease-GemStone-Core' with: 'Grease-GemStone-Core-DaleHenrichs.33';
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-DaleHenrichs.12'. ].

	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'. ].

	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-DaleHenrichs.2'. ].

	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'. ].
