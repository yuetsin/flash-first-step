trash: MovieClip
trashCan: MovieClip

var defaultX = trash.x
var defaultY = trash.y

// register MOUSE_DOWN & MOUSE_UP events
trash.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler)
trash.addEventListener(MouseEvent.MOUSE_UP, onMouseUpHandler)

function onMouseDownHandler(evt: MouseEvent): void {
	evt.currentTarget.startDrag(false)
}

function onMouseUpHandler(evt: MouseEvent): void {
	evt.currentTarget.stopDrag()
	
	// make hitTest
	if (trashCan.hitTestPoint(mouseX, mouseY, true)) {
		removeChild(DisplayObject(trash))
	} else {
		// reset trash position
		trash.x = defaultX
		trash.y = defaultY
	}
}