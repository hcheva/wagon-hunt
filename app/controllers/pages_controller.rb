class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @today = Date.today.strftime("%d %b %Y")
  end

  def team
    @members = ["Bob", "Romain", "Seb"]
  end

  def join_us
    render plain: "send us a mail"
  end

end
