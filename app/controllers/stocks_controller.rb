class StocksController < ApplicationController
  def search
    if params[:stock].present?
      #@instance var
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        flash[:alert] = "enter something valid!"
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = "enter something!"
      redirect_to my_portfolio_path
    end
  end
end