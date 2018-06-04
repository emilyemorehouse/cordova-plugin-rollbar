## 1.4.0

- Upgraded Rollbar-iOS verision to v1.0.0-alpha11
- Rollbar-iOS is now included as a Pod instead of keeping a copy of the framework directly

## 1.3.0

- Upgraded Rollbar-iOS verision to v1.0.0-alpha5
- Added documentation on testing crashes
- Updated iOS simulateCrash method to crash in a way that will be reported

### Breaking changes:

Plugin must be accessed through `window.cordova.plugins.rollbar` instead of `window.cordova.plugin.rollbar` to following naming conventions.

## 1.2.1

- Bugfix - rogue 'plugins' directory reference.

## 1.2.0

- Fixed Android version - was previously referencing an invalid package. `resgrid.cordova.plugins.rollbar` is now simply `cordova.plugin.rollbar`.

### Breaking changes

- All plugin references and naming conventions have been updated to use `cordova.plugin.rollbar`. Check the README for updated usage (hint: plugins -> plugin).

## 1.1.0

- Added a function for iOS to simulate a crash for testing.
- Updated documentation typos.
- Added Cordova version requirement.

## 1.0.0

- Initial plugin release.
