import flash.net.SharedObject

var sharedObject: SharedObject = SharedObject.getLocal("userInfo")

if (sharedObject.data.userCount) {
	sharedObject.data.userCount++
} else {
	sharedObject.data.userCount = 1
}

function refreshOutput(): void {
	if (sharedObject.data.userName) {
		responseLabel.text = "Hey \"" + sharedObject.data.userName + "\", you have visited this page " + sharedObject.data.userCount + (sharedObject.data.userCount == 1 ? " time" : " times")
	} else {
		responseLabel.text = "mind telling me your name?"
	}
}

function onSubmitButtonClicked(evt: MouseEvent): void {
	if (nameInput.text && nameInput.text != "") {
		sharedObject.data.userName = nameInput.text
	} else {
		sharedObject.data.userName = "anonymous"
	}
	refreshOutput()
}

submitButton.addEventListener(MouseEvent.MOUSE_UP, onSubmitButtonClicked)
refreshOutput()

