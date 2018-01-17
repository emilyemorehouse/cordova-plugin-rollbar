[![npm version](https://badge.fury.io/js/cordova-plugin-rollbar.svg)](https://badge.fury.io/js/cordova-plugin-rollbar)

# Rollbar Cordova Plugin #

PhoneGap / Cordova plugin for using the Rollbar service. Currently supports Android and iOS allowing for capturing native exceptions that occur outside the context of the Web View (e.g. native crashes).

For tracking within your Web View, see [the Rollbar plugin for Angular](https://github.com/tandibar/ng-rollbar).

## Rollbar Account ##
This plugin requires a Rollbar account. Sign up for your free Rollbar account [here](https://rollbar.com/).

## Supported Platforms ##

- Android
- iOS

## Installation ##
### Stable ###
You can install the plugin by running the following command:
```
cordova plugin add cordova-plugin-rollbar --variable ROLLBAR_ACCESS_TOKEN="<ROLLBAR_ACCESS_TOKEN>" --variable ROLLBAR_ENVIRONMENT="<ROLLBAR_ENVIRONMENT>"
```

If you're using Cordova 7+, use the following command:
```
cordova plugin add cordova-plugin-rollbar --variable ROLLBAR_ACCESS_TOKEN="<ROLLBAR_ACCESS_TOKEN>" --variable ROLLBAR_ENVIRONMENT="<ROLLBAR_ENVIRONMENT>" --nofetch
```

#### Bleeding edge ####
To install the most recent version in development, use:

```
cordova plugin add https://github.com/emilyemorehouse/cordova-plugin-rollbar.git --variable ROLLBAR_ACCESS_TOKEN="<ROLLBAR_ACCESS_TOKEN>" --variable ROLLBAR_ENVIRONMENT="<ROLLBAR_ENVIRONMENT>"
```

If you're using Cordova 7+, use the following command:

```
cordova plugin add https://github.com/emilyemorehouse/cordova-plugin-rollbar.git --variable ROLLBAR_ACCESS_TOKEN="<ROLLBAR_ACCESS_TOKEN>" --variable ROLLBAR_ENVIRONMENT="<ROLLBAR_ENVIRONMENT>" --nofetch
```


### Usage ###
#### Initialization ####
After the device is ready, call the following line of code to initialize the Rollbar plugin. Note that the token and environment are pulled form the plugin variables.

```
window.cordova.plugins.Rollbar.init();
```

There are many ways to wait until the device ready event has fired, but here is one example:

```
$ionicPlatform.ready(function() {
    window.cordova.plugins.Rollbar.init();
}
```

### Debugging ###
If the plugin is successfully installed, you should see the following in the logs when attached to a debugger:

```
************************ Crash Handler Notice ************************
*     App is running in a debugger. Masking out unsafe monitors.     *
* This means that most crashes WILL NOT BE RECORDED while debugging! *
**********************************************************************
```

On iOS, there is a helper method to simulate a crash. To do so, simply call:

```
window.cordova.plugins.Rollbar.simulateCrash();
```

**Note:** Most errors will NOT be reported when running in a simulator or in a development mode (basically, anytime a debugger such as lldb or adb is attached). You must build a non-development version of your app to get crash reports, such as an [Ad Hoc IPA](https://help.apple.com/xcode/mac/current/#/dev7ccaf4d3c) or a [release APK](https://ionicframework.com/docs/v1/guide/publishing.html#android-publishing).

And don't forget.. The app crashed, and therefore cannot report the error until the app is reopened!


## Authors ##
* Emily Morehouse (Twitter: @emilyemorehouse Blog: http://emilyemorehouse.com)
* Shawn Jackson (Twitter: @DesignLimbo Blog: http://designlimbo.com)
* Jason Jarrett (Twitter: @staxmanade Blog: http://staxmanade.com)

## More info ##
For more information, feel free to check out the documentation for the current Rollbar SDKs used:

* **iOS:** https://github.com/rollbar/rollbar-ios/tree/v1.0.0-alpha5
* **Android:** https://github.com/rollbar/rollbar-android


## Special Thanks ##
* Halkeye (https://github.com/halkeye)
* Cuttlesoft (https://cuttlesoft.com)


## License ##
Apache 2.0
