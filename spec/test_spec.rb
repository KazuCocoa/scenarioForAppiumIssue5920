require "spec_helper"

IOS_CAPS = {
    automationName: "Appium",
    platformName: "iOS",
    platformVersion: "9.2", # also 8.x
    deviceName: "iPhone 6s Plus - no watch",
    app: "./App/simplePushApp.app",
    sendKeyStrategy: 'grouped',
    waitForAppScript: "true;",
    localizableStringsDir: "en.lproj",
    language: "en",
    locale: "en_EN",
}

SERVER_CAPS = {
    debug: false, #true
    wait: 60
}

describe 'driver' do
  it "run test" do
    driver_start_with(IOS_CAPS, SERVER_CAPS)

    wait_true(timeout: 90, interval: 0.5,
              message: "error_message") { execute_script("$.mainApp().alert().buttons().length > 0") }
    alert_accept

    find_element(accessibility_id: "Edit").click # this method works
    sleep 3
  end
end
