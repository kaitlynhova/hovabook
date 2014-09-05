task :task_nag => :environment do
  
  @gigs = Gig.find(:all, :conditions => {:date => Time.now..2.days.from_now})
  
  
  @gigs.each do |gig|
    @user = User.find(gig.UserId)   
    @incomplete_tasks = Task.where(gig_id: gig.id, done: false);
    

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
