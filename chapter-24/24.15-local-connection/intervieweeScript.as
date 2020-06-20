import flash.net.LocalConnection

var interviewLC: LocalConnection = new LocalConnection()
interviewLC.client = this
Security.allowDomain("*")

try {
	interviewLC.connect("interview")
} catch (error: ArgumentError) {
	responseText.text = "failed to connect"
}
function ask(question): void {
	if (question == "have you eaten?") { 
		responseText.text = "Yes, I have!"
	} else if (question == "what did you eat?") {
		responseText.text = "Pasta!"
	} else {
		responseText.text = question.replace("吗", "").replace("?", "!").replace("？", "！")
	}
}