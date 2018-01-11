## 1.2.1

* Bugfix - rogue 'plugins' directory reference.

## 1.2.0

* Fixed Android version - was previously referencing an invalid package. `resgrid.cordova.plugins.rollbar` is now simply `cordova.plugin.rollbar`.

### Breaking changes:

* All plugin references and naming conventions have been updated to use `cordova.plugin.rollbar`. Check the README for updated usage (hint: plugins -> plugin).

## 1.1.0

* Added a function for iOS to simulate a crash for testing.
* Updated documentation typos.
* Added Cordova version requirement.

## 1.0.0

* Initial plugin release.
