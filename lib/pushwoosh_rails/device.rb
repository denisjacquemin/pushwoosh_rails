require 'faraday'
require 'json'

API_URL = 'https://cp.pushwoosh.com/json/1.3'

module PushwooshRails
  class Device

    attr_reader :push_token, :language, :hwid, :timezone, :device_type
    def initialize(attributes)
      @push_token = attributes["push_token"]
      @language = attributes["language"]
      @hwid = attributes["hwid"]
      @timezone = attributes["timezone"]
      @device_type = attributes["device_type"]
    end

    def self.register(application, push_token, language, hwid, timezone = 0, device_type = 1)
      response = Faraday.post do |req|
        req.url "#{API_URL}/register"
        req.headers['Content-Type'] = 'application/json'
        req.body = '{
          "request": {
              "application": "' + application + '",
              "push_token": "' + push_token + '",
              "language": "' + language + '",
              "hwid": "' + hwid + '",
              "timezone": ' + timezone.to_s + ',
              "device_type": ' + device_type.to_s + '
          }
      }'
      end
      puts "response: #{response.body.inspect}"
      Device.new(JSON.parse(response.body))
    end
  end
end
