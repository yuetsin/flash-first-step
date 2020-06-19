import flash.events.Event;

gotoButton.addEventListener(MouseEvent.MOUSE_UP, onGotoButtonClicked)
goBackButton.addEventListener(MouseEvent.MOUSE_UP, onGoBackButtonClicked)
gotoFrameComboBox.addEventListener(Event.CHANGE, onComboBoxChanged)

function onGotoButtonClicked(evt: MouseEvent): void {
	if (gotoFrameComboBox.selectedItem.data == currentFrame) {
		// do nothing
	} else {
		stack.push(currentFrame)
		gotoAndStop(gotoFrameComboBox.selectedItem.data)
	}
	updateComponents()
}

function onGoBackButtonClicked(evt: MouseEvent): void {
	gotoAndStop(stack.pop())
	updateComponents()
}

function onComboBoxChanged(evt: Event): void {
	updateComponents()
}

function updateComponents(): void {
	goBackButton.enabled = stack.length != 0
	currentFrameText.text = "you're now at frame " + currentFrame
	gotoButton.enabled = gotoFrameComboBox.selectedItem.data != currentFrame
}