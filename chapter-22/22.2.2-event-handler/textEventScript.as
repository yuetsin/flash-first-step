inputTextField: TextField
outputTextField: TextField

inputTextField.addEventListener(Event.CHANGE, onTextChanged)

function onTextChanged(evt: Event): void {
	outputTextField.text = "your text is: \"" + inputTextField.text + "\""
}