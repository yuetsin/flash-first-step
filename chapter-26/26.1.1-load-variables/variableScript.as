import flash.net.URLVariables

// var variables1 = "variables.1"
// var variables2 = "variables.2"

// Flash file has difficulty loading local files
// so let's just hard-encode these strings here
var variableString1 = "name=Echo%20Chan&age=48&job=Writer"
var variableString2 = "name=Jimmy%20Durante&age=87&job=Actor"

loadButton.addEventListener(MouseEvent.MOUSE_UP, onLoadButtonClicked)

function onLoadButtonClicked(evt: MouseEvent): void {
	var variables: URLVariables
	if (loadFirstRadioButton.selected) {
		variables = new URLVariables(variableString1)
	} else if (loadSecondRadioButton.selected) {
		variables = new URLVariables(variableString2)
	}
	nameTextField.text = variables.name
	ageTextField.text = variables.age
	jobTextField.text = variables.job
}