baselines
baseline: spec
	<baseline>
	self baselineCommon:spec.
	spec
		for: #'squeakCommon'
		do: [ 
			spec
				package: 'Javascript-Core' with: [ spec includes: #('Javascript-Pharo-Core') ];
				package: 'Seaside-Core' with: [ spec includes: #('Seaside-Pharo-Core') ];
				package: 'Seaside-Canvas' with: [ spec includes: #('Seaside-Pharo-Canvas') ];
				package: 'Seaside-Development' with: [ spec includes: #('Seaside-Pharo-Development') ];
				package: 'Seaside-Email' with: [ spec includes: #('Seaside-Pharo-Email') ];
				package: 'Seaside-Environment' with: [ spec includes: #('Seaside-Pharo-Environment') ];
				package: 'Seaside-Flow' with: [ spec includes: #('Seaside-Pharo-Flow') ];
				package: 'Seaside-Tools-Web' with: [ spec includes: #('Seaside-Pharo-Tools-Web') ];
				package: 'Javascript-Tests-Core' with: [ spec includes: #('Javascript-Tests-Pharo-Core') ];
				package: 'Seaside-Tests-Core' with: [ spec includes: #('Seaside-Tests-Pharo-Core') ];
				package: 'Seaside-Tests-Development' with: [ spec includes: #('Seaside-Tests-Pharo-Development') ];
				package: 'Seaside-Tests-Email' with: [ spec includes: #('Seaside-Tests-Pharo-Email') ];
				package: 'Seaside-Tests-Flow' with: [ spec includes: #('Seaside-Tests-Pharo-Continuation') ];
				package: 'Seaside-Tests-Functional' with: [ spec includes: #('Seaside-Tests-Pharo-Functional') ];
				package: 'Seaside-Pharo-Canvas' with: [ spec requires: #('Seaside-Pharo-Core' 'Seaside-Canvas') ];
				package: 'Comet-Pharo-Core' with: [ spec requires: #('Comet-Core') ];
				package: 'Javascript-Pharo-Core' with: [ spec requires: #('Javascript-Core' 'Seaside-Pharo-Core') ];
				package: 'Seaside-Pharo-Core' with: [ spec requires: #('Seaside-Core') ];

				package: 'Seaside-Pharo-Development'
					with: [ spec requires: #('Seaside-Development' 'Seaside-Pharo-Tools-Web' 'Seaside-Pharo-Flow') ];
				package: 'Seaside-Pharo-Email' with: [ spec requires: #('Seaside-Email' 'Seaside-Pharo-Core') ];
				package: 'Seaside-Pharo-Environment'
					with: [ spec requires: #('Seaside-Environment' 'Seaside-Pharo-Core' 'Seaside-Pharo-Canvas') ];
				package: 'Seaside-Pharo-Tools-Web'
					with: [ spec requires: #('Seaside-Tools-Web' 'Seaside-Pharo-Core' 'Seaside-Pharo-Canvas') ];
				package: 'Comet-Core'
					with: [ 
							spec
								requires: #('Seaside-Canvas' 'Javascript-Core');
								includes: #('Comet-Pharo-Core') ];
				package: 'Comet-Examples' with: [ spec requires: #('JQuery-UI' 'Comet-Core') ];
				package: 'Seaside-FileSystem' with: [ spec requires: #('SPort2') ];
				package: 'WebClient-Seaside'
					with: [ 
							spec repository: 'http://ss3.gemtalksystems.com/ss/WebClient'.
							spec requires: #('WebClient Project' 'Seaside-Core') ];
				package: 'Comet-Tests-Core' with: [ spec requires: #('Javascript-Tests-Core' 'Comet-Core') ];
				package: 'Javascript-Tests-Pharo-Core' with: [ spec requires: #('Javascript-Pharo-Core' 'Javascript-Tests-Core') ];
				package: 'Seaside-Tests-Pharo-Core' with: [ spec requires: #('Seaside-Pharo-Core' 'Seaside-Tests-Core') ];
				package: 'Seaside-Tests-Pharo-Development'
					with: [ spec requires: #('Seaside-Tests-Development' 'Seaside-Pharo-Development') ];
				package: 'Seaside-Tests-Pharo-Email'
					with: [ spec requires: #('Seaside-Email' 'Seaside-Pharo-Email' 'Grease Core Tests') ];
				package: 'Seaside-Tests-Pharo-Functional'
					with: [ 
							spec
								requires:
									#('Seaside-Tests-Functional' 'Seaside-Tests-Environment' 'Seaside-Pharo-Environment' 'Seaside-Tests-Pharo-Core') ].
			spec
				group: 'Core' with: #('Comet-Core' 'Comet-Examples');
				group: 'Tests' with: #('Comet-Tests-Core');
				group: 'OneClick'
					with:
						#('Base' 'Development' 'RSS-Core' 'Javascript-Core' 'Prototype-Core' 'Scriptaculous-Core' 'JQuery-Core' 'JQuery-UI' 'Seaside-Email' 'Seaside-HTML5' 'Seaside-InternetExplorer' 'Seaside-Examples' 'RSS-Examples' 'Seaside-Tools-Web' 'Scriptaculous-Components' 'Seaside-Welcome' 'Comet-Core' 'Comet-Examples' 'Base Tests' 'Development Tests' 'RSS-Tests-Core' 'Javascript-Tests-Core' 'Seaside-Tests-Email' 'Seaside-Tests-Functional' 'Prototype-Tests-Core' 'Scriptaculous-Tests-Core' 'Scriptaculous-Tests-Components' 'JQuery-Tests-Core' 'JQuery-Tests-UI' 'Seaside-Tests-HTML5' 'Seaside-Tests-InternetExplorer' 'Seaside-Tests-Examples' 'Seaside-Tests-Tools-Web' 'Seaside-Tests-UTF8' 'Comet-Tests-Core') ].

	spec
		for: #pharo
		do: [ 
			spec project: 'Zinc' with: [ spec loads: #('Zinc-HTTP') ].
			spec
				package: 'Seaside-Welcome' with: [ spec includes: #('Seaside-Pharo-Welcome') ];
				package: 'Seaside-Pharo-Welcome' with: [ spec requires: #('Seaside-Welcome') ].
			spec
				group: 'Core' with: #('Zinc-Seaside');
				group: 'OneClick' with: #('Zinc-Seaside') ].
			
	spec
		for: #(#'pharo4.x' #'pharo5.x' #'pharo6.x' #'pharo7.x' #'pharo8.x')
		do: [ 
			spec
				removeProject: 'OB';
				removeProject: 'Kom';
				removeProject: 'Swazoo2'.
			spec 
				package: 'Seaside-Pharo40-Continuation';
				package: 'Seaside-Pharo-Flow' with: [ spec requires: #('Seaside-Flow' 'Seaside-Pharo40-Continuation') ];
				package: 'Seaside-Pharo40-Slime' with: [ spec requires: #('Grease Slime') ];
				package: 'Seaside-Tests-Slime'
					with: [ spec requires: #('Seaside-Pharo40-Slime' 'Seaside-Tests-Component' 'Grease Slime Tests') ];
				package: 'Seaside-Pharo40-Legacy' with: [ spec requires: #('Grease') ];
				package: 'Seaside-Core' with: [ spec includes: 'Seaside-Pharo40-Legacy'  ];
				package: 'Seaside-Tests-Pharo-Continuation' with: [ spec requires: #('Seaside-Pharo40-Continuation') ];
				package: 	'Seaside-Tests-Pharo-Core' with: [ spec file: 'Seaside-Tests-Pharo-Core.pharo40' ].
			
			spec	
				group: 'Development' with: #('Seaside-Pharo40-Slime');
				group: 'Development Tests' with: #('Seaside-Tests-Slime');
				group: 'Core'
				overrides:
					#('Base' 'Development' 'RSS-Core' 'Javascript-Core' 'Prototype-Core' 'Scriptaculous-Core' 'JQuery-Core' 'JQuery-UI' 'Seaside-Email' 'Seaside-HTML5' 'Seaside-InternetExplorer' 'Seaside-Examples' 'RSS-Examples' 'Seaside-Tools-Web' 'Scriptaculous-Components' 'Seaside-Welcome' 'Zinc-Seaside') ].
				
		

	spec
		for: #(#'pharo6.x' #'pharo7.x' #'pharo8.x')
		do: [
			spec 
				package:'Seaside-Pharo60-Legacy';
				package: 'Seaside-Core' with: [ spec requires: 'Seaside-Pharo60-Legacy'  ]
		].