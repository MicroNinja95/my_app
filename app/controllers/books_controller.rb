class BooksController < ApplicationController
  def index

  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @books = Book.new(book_params)

    respond_to do |format|
      if @books.save
        format.haml { redirect_to @books, notice: 'Book was successfully created.' }
      else
        format.html.haml { render :new }
      end
    end
  end
end
