class InquiryMailer < ApplicationMailer
    default from: "dev.mailer.tokyo@gmail.com"

    def received_email(inquiry)
        @inquiry = inquiry
        # mail(to: @inquiry.email, :subject => 'お問い合わせありがとうございます。')
        mail(to: @inquiry.email, subject: 'お問い合わせありがとうございます。')
    end
end
