# fastlane-plugin:  ti_build_app

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-ti_build_app)
[!["Titanium"](http://www-static.appcelerator.com/badges/titanium-git-badge-sq.png)](http://www.appcelerator.com/titanium/)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `ti_build_app`, add it to your project by running:

```bash
fastlane add_plugin ti_build_app
```

## About ti_build_app

Build Axway Appcelerator Mobile Applications from within fastlane

This plugin provides the functionality to use the AppC CLI to build your Axwway Appcelerator Cross-Platform Mobile Application from within fastlane. Refer to AppC CLI Doc for more information: https://docs.axway.com/bundle/Appcelerator_CLI_allOS_en/page/appcelerator_command-line_interface_reference.html#AppceleratorCommand-LineInterfaceReference-iOSbuildoptionsandflags

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

```
lane :test do
  ti_build_app(
    appc_cli: "appc run build --platform ios --target dist-adhoc --distribution-name 'implicitli, LLC. (G52GS5PAND)' --pp-uuid c6ea530d-70ea-5661-b013-beb4d25b2a7b --output-dir /dist"
  )
end
```

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
