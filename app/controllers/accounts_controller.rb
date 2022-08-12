class AccountsController < ApplicationController
  def create
    @author = Author.find(params[:author_id])
    @account = @author.accounts.create(account_params)
    redirect_to author_path(@author)
  end

  private
    def account_params
      params.require(:account).permit(:account_number)
    end
end
