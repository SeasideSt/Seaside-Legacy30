rendering
renderContentOn: html
	html definitionList: [
		html definitionTerm: 'Expiry Policy'.
		html definitionData: [
			self	renderPluginInfoFor: self cache expiryPolicy on: html ].
		html definitionTerm: 'Reaping Strategy'.
		html definitionData: [
			self	renderPluginInfoFor: self cache reapingStrategy on: html ].
		html definitionTerm: 'Removal Action'.
		html definitionData: [
			self	renderPluginInfoFor: self cache removalAction on: html ].
		html definitionTerm: 'Cache Miss Strategy'.
		html definitionData: [
			self	renderPluginInfoFor: self cache missStrategy on: html ] ]