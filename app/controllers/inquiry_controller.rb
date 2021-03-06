class InquiryController < ApplicationController
    def index
        @inquiry = Inquiry.new
        render :action => 'index'
    end
    
    def confirm
        @inquiry = Inquiry.new(para)
        render :index if @inquiry.invalid?
    end

    def thanks
        @inquiry = Inquiry.new(para)
        @inquiry.save
        
       UserMailer.inquiry_email(@inquiry).deliver_now
        
        render :action => 'thanks'
    end
    
    def index2
        @inquiry = Inquiry.new(para)
        render :action => 'index'
    end
    
    private
    def para
        params.require(:inquiry).permit(:name, :email, :massage)
    end

end
