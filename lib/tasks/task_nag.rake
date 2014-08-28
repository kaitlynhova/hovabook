task :task_nag => :environment do

  @gigs = Gig.all
  
  @gigs.each do |gig| 
    if Time.now > (gig.date - 2.days)
      @user = User.find(event.user_id)
      @incomplete_tasks = Task.where(gig_id: @gig.id, done: false);
      
      @incomplete_tasks.each do |task| 
        @client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"]
        @client.account.messages.create(
           :from => ENV["TWILIO_NUMBER"],
           :to => ("+1" + @user.phone),
          :body => "YOU NEED TO HURRY THE F*CK UP AND " + task.descritpion
        )
      end
      
    end
      
  end
  
end
