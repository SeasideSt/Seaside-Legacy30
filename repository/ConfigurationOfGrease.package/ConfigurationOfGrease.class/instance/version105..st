versions
version105: spec
	<version: '1.0.5' imports: #('1.0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '1.0.5 (DaleHenrichs.141):
- experimental Pharo 1.2 support
- support for Iliad [GemStone]
1.0.5 (dkh.143):
- Move GRGemStonePlatformTest>>testFileLibrary to WAGemStoneFileLibraryTest ... reference to WAFileLibrary belongs in a Seaside package
1.0.5 (dkh.145):
- changes for the new Random classes available in 3.0'.
		spec author: 'dkh'.
		spec timestamp: '5/17/2011 11:10'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-pmm.59';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.65'. ].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-pmm.37';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-pmm.10'. ].

	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-pmm.8';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-pmm.7'. ].

	spec for: #'GreaseForPharo1.0' do: [
		spec package: 'Grease-Pharo10-Core' with: 'Grease-Pharo10-Core-dkh.4'. ].

	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.244';
			project: 'SMTPMail' with: '0.238';
			project: 'UTF8' with: '0.238';
			project: 'System-Digital-Signatures' with: '0.238'.
		spec 
			package: 'Grease-GemStone-Core' with: 'Grease-GemStone-Core-DaleHenrichs.38';
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.14'. ].

	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'. ].

	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-dkh.3'. ].

	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'. ].
