# garage-ios

iOS app to open my garage doors. Back-end can be found at [brentnycum/garage-node](https://github.com/brentnycum/garage-node).

## Description

Basic app which calls my node.js back-end app that I wrote which can open and close my garage doors. This app is simply 2 buttons for my 2 garage doors. Only works by Wifi or VPN currently. No plans to allow use from outside my network at the moment, the address is set to an internal IP on my network.

## CocoaPods

This project makes use of [CocoaPods](http://cocoapods.org/). After getting cocoapods setup just run `pod install` to install dependencies. Then use `Garage.xcworkspace` to open the Xcode project.

Currently the only dependency is [AFNetworking](https://github.com/AFNetworking/AFNetworking).

## Code

Everything can be found in `BNGarageApiClient` and `BNViewController`.

## Todo

 * Pull out `BNGarageApiClient` to be used in other home automation projects.
 * Error handling
 * Check to make sure I am on my home network (WiFi or VPN)
 * iPhone 5 Support
 * Icon
 * Garage door state (hardware and back-end support needed first)
 * Localization(?)

Project will stay simple since only my wife and I use it.
