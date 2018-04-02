class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def edit
  end

  def update
    if @author.update(author_params)
      redirect_to @author, notice: 'author was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @author.destroy
      redirect_to authors_path, notice: 'author was successfully destroyed.'
    else
      redirect_back
    end
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author, notice: 'author was successfully created.'
    else
      render :new
    end
  end 

  private
  def set_author
    @author = Author.find(params[:id])
  end
  def author_params
    params.require(:author).permit(:fName, :lName, :genre, :dobirth, :dodeath)
  end
end
