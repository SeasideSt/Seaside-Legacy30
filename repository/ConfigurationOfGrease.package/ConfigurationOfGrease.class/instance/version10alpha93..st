versions
version10alpha93: spec
	<version: '1.0-alpha9.3' imports: #('1.0-alpha9.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '- refactor groups:
On platforms without Slime
   ''Core''        = #(''Grease-Core'')
   ''Core Tests''  = #(''Grease-Tests-Core'')
   ''Slime''       = #(''Core'')
   ''Slime Tests'' = #(''Core Tests'')
   ''Tests''       = #(''Core Tests'' ''Slime Tests'')
   ''default''     = #(''Slime'')
On platforms with Slime
   ''Core''        = #(''Grease-Core'')
   ''Core Tests''  = #(''Grease-Tests-Core'')
   ''Slime''       = #(''Core'' ''Grease-Slime'')
   ''Slime Tests'' = #(''Core Tests'' ''Grease-Tests-Slime'')
   ''Tests''       = #(''Core Tests'' ''Slime Tests'')
   ''default''     = #(''Slime'')
- port to GemStone GLASS 1.0-beta.8
- adjust grease tests for GemStone Interval implementation; replace #= with #keysAndValuesDo:
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '6/4/2010 17:41'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-pmm.42';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-DaleHenrichs.58'.].
	spec for: #'squeakCommon' do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-pmm.23';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-jok.7'.].
	spec for: #'pharo' do: [
		spec project: 'Refactoring-Core' with: '1.3'.
		spec 
			package: 'Grease-Slime' with: 'Grease-Slime-jok.5';
			package: 'Grease-Tests-Slime' with: 'Grease-Tests-Slime-jok.5'.].
	spec for: #'gemstone' do: [
		spec 
			project: 'GsCore' with: '0.241';
			project: 'SMTPMail' with: '0.236';
			project: 'UTF8' with: '0.236';
			project: 'System-Digital-Signatures' with: '0.236'.
		spec 
			package: 'Grease-GemStone-Core' with: [
				spec 
					file: 'Grease-GemStone-Core-DaleHenrichs.16';
					postLoadDoIt: #'initializeNewRandomCaches10alpha3'. ];
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-DaleHenrichs.7'.].
	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'.].