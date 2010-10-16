versions
version10alpha2: spec
	<version: '1.0-alpha2' imports: #('1.0-alpha2-baseline' )>

	spec for: #common do: [
		spec blessing: #alpha.
		spec description: '- in GemStone the block arg for #on:do: must always have an argument
- fix Issue 480: http://code.google.com/p/seaside/issues/detail?id=480 (GemStone/Pharo)
- fix Issue 488: http://code.google.com/p/seaside/issues/detail?id=488
- fix Issue 499: http://code.google.com/p/seaside/issues/detail?id=499 (GemStone/Pharo)
- support for loading Grease into a 2.3 GemStone/S repository
- support ''UTF-8'' has a codec name as well
- pick up latest repository changes as of 11/17/2009 15:09"
'.
		spec author: 'dkh'.
		spec timestamp: '11/23/2009 16:09'.
		spec 
			package: 'Grease-Core' with: 'Grease-Core-dkh.8';
			package: 'Grease-Tests-Core' with: 'Grease-Tests-Core-pmm.5'.].
	spec for: #squeakCommon do: [
		spec 
			package: 'Grease-Pharo-Core' with: 'Grease-Pharo-Core-dkh.3';
			package: 'Grease-Tests-Pharo-Core' with: 'Grease-Tests-Pharo-Core-dkh.2'.].
	spec for: #gemstone do: [
		spec 
			project: 'SMTPMail' with: '0.233';
			project: 'UTF8' with: '0.233';
			project: 'System-Digital-Signatures' with: '0.233'.
		spec 
			package: 'Grease-GemStone-Core' with: 'Grease-GemStone-Core-dkh.9';
			package: 'Grease-Tests-GemStone-Core' with: 'Grease-Tests-GemStone-Core-dkh.5'.].
	spec for: #'gs2.3.x' do: [
		spec package: 'Grease-GemStone230-Core' with: 'Grease-GemStone230-Core-dkh.2'.].