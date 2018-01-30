class BooksController < ApplicationController
  def index
    @books = Bookk.find_by_id(1)
  end

  def show

  end

  def new
    @books = Book.new
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
