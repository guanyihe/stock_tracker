class StocksController < ApplicationController
  def search
    if params[:stock].present?
      #@instance var
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_to do |format|
          format.js { render partial: 'users/result'}
        #render 'users/my_portfolio'
        end
      else
        respond_to do |format|
          flash.now[:alert] = "enter something valid!"
          format.js { render partial: 'users/result'}
        end
        #redirect_to my_portfolio_path
      end
    else
      respond_to do |format|
        flash.now[:alert] = "enter something!"
        format.js { render partial: 'users/result'}
      end
      #redirect_to my_portfolio_path
    end
  end
end