accessing
model: aBrowserModel
	model := aBrowserModel.
	model addDependent: self.
	contents := model contents