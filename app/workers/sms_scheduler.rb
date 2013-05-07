class SmsScheduler
    @queue = :sms
    def self.perform(sms_url)
        puts "vivekkkkkkkkk"
      response = Net::HTTP.get_response(URI.parse(sms_url))
      puts response
    end

end
