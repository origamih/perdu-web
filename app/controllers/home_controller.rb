class HomeController < ApplicationController
  def index
  end

  def about
  end

  def location
  end

  def reservations
  end

  def events
  end

  def reserved
    options = {}
    options[:name] = params[:guest]
    options[:phone] = params[:phone_number]
    options[:people] = params[:number_of_people]
    options[:datetime] = params[:arrival_datetime]
    options[:note] = params[:note]
    ReservationNotifier.send_email(options).deliver
  end
end
