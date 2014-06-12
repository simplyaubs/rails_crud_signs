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

  def show
    @sign = Sign.find(params[:id])
  end

  def edit
    @sign = Sign.find(params[:id])
  end

  def update
    @sign = Sign.find(params[:id])
    @sign.update_attributes!(sign_params)

    redirect_to signs_path
  end

  def destroy
    @sign = Sign.find(params[:id]).delete

    redirect_to signs_path
  end

  private
  def sign_params
    params.require(:sign).permit(:sign, :color)
  end

end