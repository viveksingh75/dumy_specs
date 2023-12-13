class PostsController < InheritedResources::Base

def index
  @posts = Post.all
  render json: @posts , status: :ok
end
def show
@post = Post.find(params[:id])
  render json: @post , status: :ok
end
def new 
  @post = Post.new
end

def create
  debugger
  @post = Post.new(post_params)

  if @post.save
    render json: @post, status: :created
  else
    render json: @post.errors, status: :unprocessable_entity
  end
end


  private

    def post_params
      params.require(:post).permit(:title, :body, :publised_at, :user_id)
    end

end
