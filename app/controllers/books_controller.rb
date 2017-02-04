class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(10)
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
    @book = Book.find(params[:id])
    if @book.update title: params[:title]
      redirect_to "/books/#{params[:id]}"
    else
      render 'show'
    end
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
