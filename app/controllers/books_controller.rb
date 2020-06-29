class BooksController < ApplicationController

  def top

  end
  

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = 'Book was successfully created.'
      redirect_to books_show_path(book)
    else
      flash[:alert] = 'Book create error'
      redirect_to books_index_path
    end
  end

  def show
  	@book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = 'successfully updated.'
      redirect_to books_show_path(book)
    else
      flash[:alert] = 'error edit.'
      redirect_to books_edit_path
    end
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def destroy
  	book = Book.find(params[:id])
  	if book.destroy
  	  flash[:notice] = 'successfully destroyed.'
  	  redirect_to books_index_path
  	else
  	  flash[:alert] = 'error create.'
  	  redirect_to books_index_path
  	end
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
