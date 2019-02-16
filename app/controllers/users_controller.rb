class UsersController < ApplicationController
  before_action :set_user, only:[:mypage, :prof, :identification]

  def mypage
  end

  def prof
  end

  def payment
  end

  def credit
  end

  def identification
  end

  def logout
  end

  private
  def set_user
    @user = current_user
  end

end
