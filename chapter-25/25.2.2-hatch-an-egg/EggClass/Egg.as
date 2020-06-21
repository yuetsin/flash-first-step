package EggClass {
	
	import flash.text.TextField
	import flash.text.TextFieldType
	
	public class Egg {

		static var incId: int = 0

		var color: uint
		var weight: int

		// constructor
			public function Egg(eggColor: uint, eggWeight: int) {
				color = eggColor
				weight = eggWeight
			}

			// `hatch` method
			public function hatch(at, xPos, yPos): void {
				var textField: TextField = new TextField()
				textField.type = TextFieldType.DYNAMIC
				textField.text = "Hatched Egg #" + String(Egg.incId)
				textField.width = textField.textWidth + 4
				textField.height = textField.textHeight + 4
				textField.selectable = false
				textField.x = xPos
				textField.y = yPos
				textField.textColor = color
				textField.thickness = weight
				at.addChild(textField)
				Egg.incId++
			}
	}
}