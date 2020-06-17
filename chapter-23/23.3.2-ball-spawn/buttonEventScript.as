spawnAboveButton.addEventListener(MouseEvent.MOUSE_UP, onSpawnAboveButtonClicked)
spawnHereButton.addEventListener(MouseEvent.MOUSE_UP, onSpawnHereButtonClicked)
spawnBelowButton.addEventListener(MouseEvent.MOUSE_UP, onSpawnBelowButtonClicked)

function onSpawnAboveButtonClicked(evt: MouseEvent): void {
	spawnBall(evt.currentTarget, 0, -200)
}

function onSpawnHereButtonClicked(evt: MouseEvent): void {
	spawnBall(evt.currentTarget, 0, 0)
}

function onSpawnBelowButtonClicked(evt: MouseEvent): void {
	spawnBall(evt.currentTarget, 0, 200)
}