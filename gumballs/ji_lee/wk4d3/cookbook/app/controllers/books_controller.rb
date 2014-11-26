class BooksController < ApplicationController
  before_action :authenticate, :except => [:index]

  def index
    @books = Book.all
  
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, :notice => 'new book successfully created'
    else
      render :new
    end
  end

  def show 
    @book = Book.find_by(:title => params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
    
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to '/books'  
  end

  def destroy 
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end

  private

  def book_params
    params.require(:book).permit(:title, :cuisine, :image_url)
  end
end