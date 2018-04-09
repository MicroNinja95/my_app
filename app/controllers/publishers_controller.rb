class PublishersController < ApplicationController
  before_action :set_publisher, only: [:show, :edit, :update, :destroy]

  def index
    @publishers = Publisher.all
  end

  def show
  end

  def new
    @publisher = Publisher.new
  end

  def edit
  end

  def update
    if @publisher.update(publisher_params)
      redirect_to @publisher, notice: 'publisher was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @publisher.destroy
      redirect_to publishers_path, notice: 'publisher was successfully destroyed.'
    else
      redirect_back
    end
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      redirect_to @publisher, notice: 'publisher was successfully created.'
    else
      render :new
    end
  end
  
  private
  def set_publisher
    @publisher = Publisher.find(params[:id])
  end
  def publisher_params
    params.require(:publisher).permit(:title, :city, :state)
  end
end
