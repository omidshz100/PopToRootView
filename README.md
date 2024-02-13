# PopToRootView

## Overview

PopToRootView is a SwiftUI-based iOS application that demonstrates how to manage navigation within the app. It utilizes the SwiftUI framework, Swift programming language, and a custom navigation stack implementation for handling navigation paths.

## ContentView.swift

The primary view of the application is defined in the ContentView.swift file. This view consists of a TabView with two tabs: "Home" and "Settings." Each tab contains a NavigationStack that manages the navigation within that specific tab.

### Pages Enumeration

An enumeration named Pages is used to represent the tabs in the TabView. It includes cases for "Home" and "Settings," along with corresponding symbol images.

### ContentView Structure

The ContentView structure maintains state variables, such as activeTab, homePaths, settingsPaths, and tappCount, to manage the navigation and track the number of taps on the tabs. It utilizes the NavigationStack to handle navigation within each tab.

### NavigationStack

The NavigationStack is a custom SwiftUI view that manages a navigation path for a specific tab. It includes a List with a NavigationLink to a "Detail" view, and it provides a customizable navigationDestination closure for dynamic navigation content.

## Usage

To use PopToRootView, simply open the project in Xcode and run it on your iOS device or simulator. Explore the navigation features by tapping on the tabs, navigating to the "Detail" view, and using the "More" navigation links.

## Additional Notes

- The application implements a pop gesture using a button within the navigationDestination closure.
- The tappCount variable is used to determine specific actions when tapping on the "Home" tab multiple times.

Feel free to customize and extend the PopToRootView application based on your needs and requirements. If you encounter any issues or have suggestions for improvement, please refer to the [issues](#) section of this repository.
## Video Demo

[![Watch the video](https://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](https://www.youtube.com/watch?v=k5yyZ8R2Dig)

Thank you for using PopToRootView! Happy coding!

## Preview

```swift
ContentView()
```

---
