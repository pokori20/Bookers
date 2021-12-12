class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new

  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    @book = Book.new(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    if @book.save
    # ３. index画面へリダイレクト
    redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index

    end
  end

  def edit
    @book = Book.find(params[:id])
  end

    def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
    end

    def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to '/books'

    end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
