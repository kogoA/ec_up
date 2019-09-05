class ContactMailer < ApplicationMailer
    def send_mail(contact)
        @contaxt = contact
        mail(
            from: 'system@example.com',
            to: @contact.email,
            subject: 'XXX お問い合わせありがとうございます。'
        )
    end

    def receive_mail(contact)  #自分に送信
        @contact = contact
        mail(
            from: 'system@example.com',
            to: 'dev.mailer.tokyo@gmail.com',　　#自分のメアドベタがき
            subject: 'お問い合わせ通知'
        )
    end
end