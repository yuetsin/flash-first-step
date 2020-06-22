import flash.net.URLRequest

stop()

var request: URLRequest = new URLRequest("http://localhost/cgi-bin/updatecount.pl")

var loader: URLLoader = new URLLoader()
loader.dataFormat = URLLoaderDataFormat.VARIABLES
loader.addEventListener(Event.COMPLETE, onLoaderComplete)
loader.addEventListener(IOErrorEvent.IO_ERROR, onLoaderError)
loader.load(request)


function onLoaderComplete(e: Event): void {
	var variables: URLVariables = new URLVariables(loader.data);
	for (var i in variables) {
		if (i == "howmany") {
			visitedCounterLabel.text = "visited counter: " + String(variables[i])
			play()
		} else {
			visitedCounterLabel.text = "failed to parse response \"" + loader.data + "\""
		}
	}
}

function onLoaderError(e: IOErrorEvent):void {
	visitedCounterLabel.text = "failed to send request. Error: " + String(e) 
}