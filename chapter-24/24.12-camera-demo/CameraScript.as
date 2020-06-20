import flash.media.Camera

loadVideoButton.addEventListener(MouseEvent.MOUSE_UP, onLoadButtonClicked)

var camera: Camera

function onLoadButtonClicked(evt: MouseEvent): void {
	camera = Camera.getCamera()
	camera.setMode(cameraVideo.width, cameraVideo.height, 60)
	
	if (!camera) {
		trace("too bad, no camera found")
		return
	}
	cameraVideo.attachCamera(camera)
	evt.target.enabled = false
}