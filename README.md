#BlankStateViewController

Convenience view controller to hide content on errors, present a loading message or simply have something there if you have nothing else to display.

<p align="center">
	<img src="https://raw.githubusercontent.com/raulriera/BlankStateViewController/master/Screenshot.png" />
</p>

## Usage:

Simply init the view controller from a storyboard, include the title and message that you want to display and present it.

```objective-c
self.blankStateViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"BlankStateViewController"];

[self.blankStateViewController setTitle:@"Location Services are disabled" andMessage:@"Please enable location services in your device 'Settings' screen"];

[self presentViewController:self.blankStateViewController animated:NO completion:nil];
```

## About:
Created by Raul Riera, [@raulriera](http://twitter.com/raulriera)