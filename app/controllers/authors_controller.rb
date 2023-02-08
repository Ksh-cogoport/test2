class AuthorsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        if(params[:author_id])
            author=Author.find(params[:author_id])
            book= Book.where(author_id: author.id)
            render json: book
        elsif
            render json: Author.all
        end
    end
    def newauthor
        new_author =Author.create(Name: params[:Name],
        Email: params[:Email], DOB: params[:DOB],
        Phone_No: params[:Phone_No])
        render json: new_author
    end
    def deleteauthor
        auth=Author.find(params[:id])
        auth.destroy
        render html:"deleted"
    end
end
