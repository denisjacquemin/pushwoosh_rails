require './test/test_helper'

class PushwooshRailsDeviceTest < Minitest::Test
  def test_exists
    assert PushwooshRails::Device
  end

  def test_it_register_a_device
    VCR.use_cassette('register_device') do
      device = PushwooshRails::Device.register("APPLICATION_CODE", "DEVICE_PUSH_TOKEN", "en", "hardware device id", 3600, 1)
      assert_equal PushwooshRails::Device, device.class
    end
  end
end
