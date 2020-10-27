class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index

  end

  def new
    @user = User.new
  end
end
