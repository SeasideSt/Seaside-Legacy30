versions
version1063: spec
	<version: '1.0.6.3' imports: #('1.0.6.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.0.6.1 (dkh.157):
- address GemStone2.3.x upgrade issues for GLASS 1.0-beta.8.7
1.0.6.1 (dkh.158):
- fix Issue 279: GRGemStoneRandomProvider class>>#''sessionStart'' calls TransientRandom>>#''open'' which does not exist
  http://code.google.com/p/glassdb/issues/detail?id=279
  GemStone 2.3 fix (GemStone 2.4 fixed in earlier version)
1.0.6.1 (dkh.159):
- port to GemStone 3.0.1 (#generatehardBreak changed for 3.0)
- GemStone 3.0.1 fix for Issue 130: remote breakpoints don''t work
  http://code.google.com/p/glassdb/issues/detail?id=130
1.0.6.2 (StephaneDucasse.157): updating to renaming happening in RB :( 
								- grease-slime.14.lr and a couple of others
1.0.6.3 (dkh.172):
- opened for development ... continued GemStone 3.0.1 work continued from 1.0.6.1
- clean up tests when run against Minimal GLASS group'.
		spec author: 'dkh'.
		spec timestamp: '10/19/2011 21:52'. "Date today"
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
					file: 'Grease-GemStone-Core-dkh.46';
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
