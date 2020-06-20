import flash.media.Sound

var mp3Url = "http://www.zju.edu.cn/_upload/article/audios/12/9f/60d4433a44c3ab48e15f62baf138/a2ebdf90-3d5c-4d6a-8aa5-e3d26c650bb8.mp3"

controlButton.addEventListener(MouseEvent.MOUSE_UP, onStartLoading)

var loadSound: Sound = new Sound()
var loadSoundChannel: SoundChannel = new SoundChannel()

function onStartLoading(evt: MouseEvent): void {
	evt.target.enabled = false
	loadSound.load(new URLRequest(mp3Url))
	loadSound.addEventListener(ProgressEvent.PROGRESS, onLoading)
	loadSound.addEventListener(Event.COMPLETE, onLoadComplete)
}

function onLoading(e: ProgressEvent): void {
	progressBar.setProgress(e.bytesLoaded, e.bytesTotal)
}

function onLoadComplete(e: Event): void {
	loadSoundChannel = loadSound.play()
	progressBar.visible = false
}