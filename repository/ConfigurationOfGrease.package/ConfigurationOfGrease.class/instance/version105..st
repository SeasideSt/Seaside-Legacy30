versions
version105: spec
	<version: '1.0.5' imports: #('1.0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.0.5 (DaleHenrichs.141):
- Issue 267: FileLibrary improvements
  http://code.google.com/p/seaside/issues/detail?id=267
- experimental Pharo 1.2 support
- support for Iliad [GemStone]
1.0.5 (dkh.143):
- Move GRGemStonePlatformTest>>testFileLibrary to WAGemStoneFileLibraryTest ... reference to WAFileLibrary belongs in a Seaside package'.
		spec author: 'dkh'.
		spec timestamp: '04/27/2011 16:08:00'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-as.59';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.65'. ].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-as.38';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-pmm.10'. ].

	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-pmm.8';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-pmm.7'. ].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.3'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.244';
			project: 'SMTPMail' with: '0.238';
			project: 'UTF8' with: '0.238';
			project: 'System-Digital-Signatures' with: '0.238'.
		spec 
			package: 'Grease-GemStone-Core' with: 'Grease-GemStone-Core-dkh.37';
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.14'. ].

	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'. ].

	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-DaleHenrichs.2'. ].

	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'. ].
