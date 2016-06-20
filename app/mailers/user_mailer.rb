class UserMailer < ApplicationMailer
    
    default from: 'notifications@example.com'
 
      def inquiry_email(inquiry)
        @inquiry = inquiry
        mail to: "achieveapp21@gmail.com", subject: 'お問い合わせがきました'
      end
      
    
end
