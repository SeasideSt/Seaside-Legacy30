versions
version1051: spec
	<version: '1.0.5.1' imports: #('1.0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.0.5.1 (dkh.150):
- open 1.0.5.1 for development ... GemStone-specific branch aimed at bypassing use of class instance variables (etc.) to allow the GemStone 3.0 version of Seaside to run against a read only SymbolDictionary. Some class instance variables are mapped to session temps and some are mapped to user-specific storage in UserGlobals.
- refactor GRGemStonePlatform>>logError:title: and friends a bit to make it somewhat more useful
- GRGemStoneRandomProvider class instance variables mutex and generator mapped to session temps
1.0.5.1 (dkh.152):
- fix issue 290  "transactionMutex is always nil"
  http://code.google.com:9393/p/glassdb/issues/detail?id=290'.
		spec author: 'dkh'.
		spec timestamp: '08/31/2011 12:43:20'.
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
			project: 'GsCore' with: '0.245';
			project: 'SMTPMail' with: '0.239';
			project: 'UTF8' with: '0.239';
			project: 'System-Digital-Signatures' with: '0.239'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-dkh.40';
					postLoadDoIt: #'initializeTransactionMutex1051'. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.14'. ].

	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'. ].

	spec for: #'gs2.4.x' do: [
		spec package: 'Grease-GemStone240-Core' with: 'Grease-GemStone240-Core-dkh.3'. ].

	spec for: #'gs3.x' do: [
		spec package: 'Grease-GemStone300-Core' with: 'Grease-GemStone300-Core-DaleHenrichs.2'. ].
