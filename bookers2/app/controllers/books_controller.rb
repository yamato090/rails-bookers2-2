class BooksController < ApplicationController
 before_action :colect_user, only: [:edit, :update]

  def show
    @book = Book.find(params[:id])
    @books = Book.all
    @user = @book.user
    @new_book = Book.new
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book), notice: "You have created book successfully."
    else
      @books = Book.all
      render 'index'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end



  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book), notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end


  private
  def colect_user
    user = Book.find(params[:id]).user
    if current_user.id != user.id
      redirect_to books_path
    end
  end
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
