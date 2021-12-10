class BooksController < ApplicationController
  def index

  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    list = List.new(list_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # ３. トップ画面へリダイレクト
    redirect_to '/books'
  end

  def edit
  end
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
