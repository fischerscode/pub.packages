`WrapFit`, proposed in [PR #136161](https://github.com/flutter/flutter/pull/136161), is a new way to fit children of `Wrap`.
Since it's not clear when and if this PR is merged, I've created this package for those developers who need the feature right now.

## Disclaimer

As soon, as `WrapFit` is available in the stable flutter release, I'll archive this package and publish a new version that `@deprecates` all the features.
Upgrading to the flutter implementation should be as simple as changing `Wrap2` to `Wrap`.

In case the PR doesn't get merged, I might archive this package without an adequate alternative.

## Features

Mainly, this package allows developers to stretch a child of `Wrap2` to fill the remaining space of the current run.

![Demonstration of WrapFit.runLoose](https://github.com/flutter/flutter/assets/45403027/186a2734-5a05-4e24-8933-2046506230aa)

## Getting started

1. Add the package to the dependencies: `flutter pub add wrapfit`
2. Use `Wrap2` instead of `Wrap`
3. Wrap a child of `Wrap2` with `Wrapped` and set `fit`.
   - `WrapFit.runTight`
   - `WrapFit.runLoose` 
   - `WrapFit.tight`
   - `WrapFit.loose`

## Usage

(Also have a look at the [full app example](https://pub.dev/packages/location/example).)

```dart
Wrap2(
    children: [
        Text("Default (loose)"),
        Wrapped(
            fit: WrapFit.runTight,
            child: Text("runTight"),
        ),
        Wrapped(
            fit: WrapFit.runLoose,
            child: Text("runLoose"),
        ),
        Wrapped(
            fit: WrapFit.tight,
            child: Text("tight"),
        ),
        Wrapped(
            fit: WrapFit.loose,
            child: Text("loose"),
        ),
    ]
)
```