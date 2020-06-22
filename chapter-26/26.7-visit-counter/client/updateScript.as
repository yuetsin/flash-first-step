import flash.net.URLRequest


var updateRequest: URLRequest = new URLRequest("http://localhost/cgi-bin/getcount.pl")

var updateLoader: URLLoader = new URLLoader()
updateLoader.dataFormat = URLLoaderDataFormat.VARIABLES
updateLoader.addEventListener(Event.COMPLETE, onUpdateLoaderComplete)
updateLoader.load(updateRequest)

function onUpdateLoaderComplete(e: Event): void {
	var variables: URLVariables = new URLVariables(loader.data);
	for (var i in variables) {
		if (i == "howmany") {
			visitedCounterLabel.text = "visited counter: " + String(variables[i])
		} else {
			visitedCounterLabel.text = "failed to send request. try again later"
		}
	}
}