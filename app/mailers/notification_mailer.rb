# app/mailers/notification_mailer.rb

class NotificationMailer < ApplicationMailer
    default from: 'notifications@tuapp.com' # Cambia esto a tu dirección de correo electrónico de envío.
  
    def postulation_notification(user, oferta_laboral)
      @user = user
      @oferta = oferta_laboral
      mail(to: 'esteban@example.com', subject: 'Nueva postulación a oferta laboral')
    end
  end
  