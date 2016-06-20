class InboxController < ApplicationController
  
  def index
      
      require 'mail'
      
      Mail.defaults do
        retriever_method :pop3, {
          :address => "pop.gmail.com",
          :port => 995,
          :user_name => 'achieveapp21@gmail.com',
          :password => 'oipanqzzkqdlvqom',
          :enable_ssl => true
        }
      end

        
      @mails = Mail.all

  end
  
end
