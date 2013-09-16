class Emailer < ActionMailer::Base
  default from: "anbublacky@gmail.com"
    def bid_for_dealer(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "There is a bid for you")
  end
  
  def counter_bid_to_customer(user)
    @user = user
    mail(:to => "<#{user.email}>", :subject => "Counter Bid for you")
  end
  def welcome_message(user)
    @user = user
    mail(:to => "<#{user.email}>", :subject => "Nbathat welcomes you")
  end

end
