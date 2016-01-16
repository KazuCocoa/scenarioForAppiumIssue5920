require 'rspec'

require_relative '../lib/c_appium/driver'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

RSpec.configure do |c|

  c.include AppiumCustomDriver

end
