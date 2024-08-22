class PagesController < ApplicationController
  def home
  end

  def about_us
    @marco = User.find_by(email: "marcoogarbini@gmail.com")
    @moises = User.find_by(email: "moises.leonardo.velasquez.g@gmail.com")
  end
end
