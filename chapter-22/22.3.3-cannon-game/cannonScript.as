import flash.events.KeyboardEvent

cannonMC: MovieClip

stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler)

function keyDownHandler(evt: KeyboardEvent): void {
	switch (evt.keyCode) {
		case Keyboard.LEFT:
			cannonMC.x -= 10
			break
		case Keyboard.RIGHT:
			cannonMC.x += 10
			break
		case Keyboard.SPACE:
			var bullet: Bullet = new Bullet()
			bullet.x = cannonMC.x
			bullet.y = cannonMC.y
			addChild(bullet)
			break
		default:
			break
	}
}