# About

This repository is scenario for https://github.com/appium/appium/issues/5920 to solve it.

# How to use

1. `npm install` in root directory.
    - Then `appium` is installed.
2. `$ ./run_test.sh`
    - Then, scenario start

With Appium 1.4.16, then test scenario succeed. But with Appium 1.5.0-beta, then test scenario is failed.

# Test target

Test target is under `App` directory.

The test target is built this repository : https://github.com/KazuCocoa/simplePushAppForIssue

You can clone and build it on your local Mac.

# environment
- Mac OS X 10.10, 10.11
- Xcode6.4, Xcode7
- iOS8.x simulator and iOS9.x simulator
