class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        books=Author.joins(:books).select('*')
        # if(params[:book_id])
        #     render json:Author.joins(:books).select('*').where(books.id: params[:book_id])
        # else
        #     render json:Author.joins(:books).select('*')
        # end
        render json: books
    end
    def newbook
        new_book =Book.create(Title: params[:Title],Desc: params[:Desc],
        published_date: params[:published_date],category: params[:category],
        author_id: params[:author_id])
        render json: new_book
    end
    def deletebook
        book=Book.find(params[:id])
        book.destroy
        render html:"deleted"
    end
end
