class MainController < ApplicationController
    #create index method that will also serve as the home page
    def index
        @blogs = Blog.all
    end
    
    #create show function that will display individual blog posts
    def show
        @blog = Blog.find(params[:id])
    end
    
    def new
    
    end
    
    def create
        @new_post = Blog.create(
          title: params[:title],
          content: params[:content]
        )
        # if the user successfully creates a new post Rails will route to a view of that post, otherwise it will stay on the form
        if @new_post.valid?
          redirect_to single_post_path(@new_post)
          # this does the same thing as passing a route to the show page of the object: redirect_to '/model_names/#{instance_variable_name.id}'
        else
            render action: :new
        end
    end
end
