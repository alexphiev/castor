class BooksController < ApplicationController
  def index
    @books = Book.all
    @categories = Category.all
  end

  def create
    # mon_livre = Book.new
    # mon_livre.title = params[:title]
    # mon_livre.save

    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/books"
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    mon_livre = Book.find(params[:id])
    mon_livre.title = params[:title]
    mon_livre.save
    redirect_to "/books/#{params[:id]}"
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end

  def delete_all
    @books = Book.all
    @books.each do |book|
      book.destroy
    end
    redirect_to "/books"
  end
end
