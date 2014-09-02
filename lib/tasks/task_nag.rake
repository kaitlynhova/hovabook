task :task_nag => :environment do

  @client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"]
  @client.account.messages.create(
     :from => ENV["TWILIO_NUMBER"],
     :to => (ENV[MY_PHONE_NUMBER]),
    :body => "HAY IT WORKED! KEEP GOING"
  )
      
  
end
