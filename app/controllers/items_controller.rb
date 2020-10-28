class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index

  end

  def new
    @user = User.new
  end

  def edit
    @prototype = Prototype.find(params[:id])
    unless current_user == @prototype.user
      redirect_to root_path
    end
  end
end
