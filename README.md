## DoTell

DoTell is an analytics service and reporting tool to track events on websites.

![Alt text](https://raw.githubusercontent.com/jeffminnear/do-tell/switch-to-pg/app/assets/images/do-tell-faker-1.png "example")

After registering your application, add this JavaScript snippet to your site to connect it to DoTell.

```
var doTell = {};
  doTell.report = function(eventName){
    var event = {event: { name: eventName}};

    var request = new XMLHttpRequest();
    request.open("POST", "https://do-tell-sir.herokuapp.com/api/events", true);
    request.setRequestHeader('Content-Type', 'application/json');
    request.send(JSON.stringify(event));
  }
```

Then call `doTell.report("<NAME_OF_THE_EVENT>")` whenever an event you want to track is triggered.
