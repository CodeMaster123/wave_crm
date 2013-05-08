class SmsScheduler
    @queue = :sms
    def self.perform(sms_url)
      response = Net::HTTP.get_response(URI.parse(sms_url))
    end

end
