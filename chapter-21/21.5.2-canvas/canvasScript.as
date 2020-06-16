import flash.display.Shape

stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler)
stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUpHandler)

var isDragging: Boolean = false
var startPointX: Number = 0
var startPointY: Number = 0

function onMouseDownHandler(evt: MouseEvent): void {
	isDragging = true
	startPointX = mouseX
	startPointY = mouseY
}

function onMouseUpHandler(evt: MouseEvent): void {
	isDragging = false
	var line: Shape = new Shape()
	line.graphics.lineStyle(2, 0x008080, 1.0)
	line.graphics.moveTo(startPointX, startPointY)
	line.graphics.lineTo(mouseX, mouseY)
	this.addChild(line)
}