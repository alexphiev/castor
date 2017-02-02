class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    # mon_livre = Book.new
    # mon_livre.title = params[:title]
    # mon_livre.save

    Book.create title: params[:title]
    redirect_to "/books"
  end
end
