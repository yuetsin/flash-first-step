function spawnBall(target, offsetX, offsetY) {
	for (var i = 0; i < 3; i++) {
		var ball: Ball = new Ball()
		ball.x = target.x + offsetX + (Math.random() - 0.5) * 100
		ball.y = target.y + offsetY + (Math.random() - 0.5) * 80
		this.addChild(ball)
	}
}