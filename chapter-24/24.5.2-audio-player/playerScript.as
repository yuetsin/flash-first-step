var playTitle = "▶"
var stopTitle = "◼"
var isMediaPlaying = false

var media = new WinterMedia()
var channel: SoundChannel
var mediaLength = media.length

controlButton.label = playTitle
controlButton.addEventListener(MouseEvent.MOUSE_UP, onControlButtonClicked)

function onControlButtonClicked(evt: MouseEvent): void {
	if (isMediaPlaying) {
		channel.stop()
		controlButton.label = playTitle
	} else {
		channel = media.play()
		controlButton.label = stopTitle
	}
	isMediaPlaying = !isMediaPlaying
}