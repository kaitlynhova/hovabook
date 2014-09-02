task :task_nag => :environment do
  
  @gigs = Gig.all
  
  
  @gigs.each do |gig|
    @user = User.find(gig.UserId)   
    @incomplete_tasks = Task.where(user_id: @user.id, done: false);
    
    if Time.now > (gig.date.to_date - 2.days)
      @incomplete_tasks.each do |task|
        @client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"]
        @client.account.messages.create(
           :from => ENV["TWILIO_NUMBER"],
           :to => ("1" + @user.phone ),
          :body => task.descritpion
        )
      end
    end
    
  end
  
  
      
  
end
