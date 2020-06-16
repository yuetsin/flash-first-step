textFieldA: TextField
textFieldB: TextField
textFieldC: TextField

textFieldA.addEventListener(FocusEvent.FOCUS_IN, onFocusIn)
textFieldA.addEventListener(FocusEvent.FOCUS_OUT, onFocusOut)

textFieldB.addEventListener(FocusEvent.FOCUS_IN, onFocusIn)
textFieldB.addEventListener(FocusEvent.FOCUS_OUT, onFocusOut)

textFieldC.addEventListener(FocusEvent.FOCUS_IN, onFocusIn)
textFieldC.addEventListener(FocusEvent.FOCUS_OUT, onFocusOut)

function onFocusIn(evt: FocusEvent): void {
	evt.currentTarget.text = "Get Focus!"
}

function onFocusOut(evt: FocusEvent): void {
	evt.currentTarget.text = "Lost Focus!"
}