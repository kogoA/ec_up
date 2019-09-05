class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end
    
    def create
        @contact = Contact.new
        @contact.attributes = session[:contact] || Hash.new
          if @contact.valid?
             @contact.save
             ContactMailer.send_mail(@contact).deliver_now   ##ここでメール送信処理を行う(相手)
             ContactMailer.receive_mail(@contact).deliver_now  ##ここでメール送信処理を行う(自分)
          render :action => "thanks"
        else
          flash.now[:warning] = "※プライバシーポリシーに同意してください。" if params[:contact][:terms].nil?
          render :action => "new"
        end
      end
end
