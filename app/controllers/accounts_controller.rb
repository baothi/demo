class AccountsController < ApplicationController

  before_action :find_account, only: [:show]

  def index
    @user = User.find(params[:user_id])
    @accounts = @user.accounts
  end

  def show
  end

  private

  def find_account
    @account ||= Account.find(params[:id])
  end

end
