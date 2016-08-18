class ReservationNotifier < ApplicationMailer
  default from: "perdu@perdu.vn"
  def send_email(options = {})
    @options = options
    mail(to: "nguyenthuyngan112@gmail.com", subject: 'Perdu Reservation')
  end
end
