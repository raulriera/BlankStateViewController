#BlankStateViewController

Convenience view controller to hide content on errors, present a loading message or simply have something there if you have nothing else to display.

<p align="center">
	<img src="https://raw.githubusercontent.com/raulriera/BlankStateViewController/master/Screenshot.png" />
</p>

## Usage:

Simply import the category provided and call `overlayBlankStateViewWithTitle:message` method. There are other convenience methods that I encorage your to check to expand this controller to various needs. For example, you can add as many View Controller as you want to create several designs for these views.

Below you can find an example of this view used to overlay a message when there is no location permission.

```objective-c
- (void)locationManager:(CLLocationManager *)locationManager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse
        || status == kCLAuthorizationStatusAuthorizedAlways) {

        if (self.isBlankStateViewOverlayPresent) {
            [self removeBlankStateViewOverlay];
        }

        // Do something with the location

    } else if (status == kCLAuthorizationStatusDenied) {
        [self overlayBlankStateViewWithTitle:NSLocalizedString(@"Location Services are disabled", @"Generic title when the localisation is disabled") message:NSLocalizedString(@"Please enable location services in your device 'Settings' screen", @"Instructions on how to enable location services")];
    }
}
```

## About:
Created by Raul Riera, [@raulriera](http://twitter.com/raulriera)
