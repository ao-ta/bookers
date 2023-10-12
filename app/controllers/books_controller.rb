class BooksController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する.
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
     book = Book.find(params[:id]) #データを1件取得
    book.destroy #データを削除
    redirect_to '/books'
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
