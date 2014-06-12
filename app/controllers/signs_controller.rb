class SignsController < ApplicationController

  def index
    @sign = Sign.new
    @signs = Sign.all
  end

  def create
    @sign = Sign.new(sign_params)
    if @sign.save

      redirect_to signs_path
    else
      render :index
    end
  end

  private
  def sign_params
    params.require(:sign).permit(:sign, :color)
  end

end