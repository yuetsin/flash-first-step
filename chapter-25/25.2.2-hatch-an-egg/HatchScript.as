import EggClass.Egg

hatchButton.addEventListener(MouseEvent.MOUSE_UP, onHatchButtonClicked)

function onHatchButtonClicked(evt: MouseEvent): void {
	var egg = new Egg(uint(Math.random() * 0xffffff), int(Math.random() * 8))
	egg.hatch(this, int(Math.random() * this.width), int(Math.random() * this.height))
}