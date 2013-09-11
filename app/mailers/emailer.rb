class Emailer < ActionMailer::Base
  default from: "anbublacky@gmail.com"
    def bid_for_dealer(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "There is a bid for you")
  end
end
