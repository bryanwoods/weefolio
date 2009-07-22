class PiecesController < ApplicationController
  def new
    @portfolio = current_user.portfolio
    @piece  = @portfolio.pieces.new
  end
  
  def create
    @portfolio = current_user.portfolio
    @piece = @portfolio.pieces.create!(params[:piece])
    if @piece.save
      redirect_to user_portfolio_path(current_user, @portfolio)
      flash[:notice] = "Added '#{@piece.title}' to your Weefolio"
    end
  end

  def edit
    @portfolio = current_user.portfolio
    @piece = Piece.find(params[:id])
  end
  
  def update
    @portfolio = current_user.portfolio
    @piece = Piece.find(params[:id])
    
    if @piece.update_attributes(params[:piece])
      redirect_to user_portfolio_path(current_user)
      flash[:notice] = "Piece updated."
    end
  end
  
  def destroy
    @portfolio = current_user.portfolio
    @piece = Piece.find(params[:id])
    
    @piece.destroy
    redirect_to user_portfolio_path(current_user)
    flash[:notice] = "'#{@piece.title}' deleted."
  end

  def show
  end

end
