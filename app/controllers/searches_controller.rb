class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    @content = params[:word]

    if @range == "User"
      @model = "user"
      @users = User.looks(params[:search], params[:word])
    else
      
      @model = "book"
      @books = Book.looks(params[:search], params[:word])
    end
  end
end
