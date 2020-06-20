import flash.net.LocalConnection

var interviewLC: LocalConnection = new LocalConnection()
interviewLC.addEventListener(StatusEvent.STATUS, onStatus);

askButtonA.addEventListener(MouseEvent.MOUSE_UP, askQuestion)
askButtonB.addEventListener(MouseEvent.MOUSE_UP, askQuestion)

function askQuestion(evt: MouseEvent): void {
	try {
		interviewLC.connect("interview")
	} catch (error: ArgumentError) {
		
	}
	var question = evt.target.label
	interviewLC.send("interview", "ask", question)
}


function onStatus(event: StatusEvent): void {   
	switch (event.level) {    
		case "status":
			     responseText.text = "LocalConnection.send successfully"
			     break;    
		case "error":
			     responseText.text = "LocalConnection.send failed"
			     break;
	}
}