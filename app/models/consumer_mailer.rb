class ConsumerMailer < ActionMailer::Base

  def email_a_friend(email_a_friend_settings)
    recipients email_a_friend_settings.recipient_email_address
    from email_a_friend_settings.sender_email_address
    subject "#{email_a_friend_settings.title} - The People's Feed"
    body :email_a_friend_settings => email_a_friend_settings
  end  

end