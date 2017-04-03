require './test/test_helper'

class PushwooshRailsDeviceTest < Minitest::Test
  def test_exists
    assert PushwooshRails::Message
  end

  def test_it_create_a_message
    VCR.use_cassette('create_message') do
      message = PushwooshRails::Message.create("APPLICATION_CODE", "API_ACCESS_TOKEN", "now", true, "Hello world!")
      assert_equal PushwooshRails::Message, message.class
    end
  end
end
