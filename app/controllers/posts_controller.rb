class PostsController < ApplicationController
	before_action :find_post, only:[:show,:edit,:update,:destroy]

	def index
		@posts = Post.all.order("created_at DESC")
	end

	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		if @post.save	

			flash[:notice] = "Post Creado Exitosamente"
			redirect_to post_path(@post)
		else
			render :new
		end
	end

	def show
		#estos son llamados desde el metodo privdo de abajo y son
		#accionados con el "before_action" que se encuentra en la parte de
		#arriba.	
	end

	def edit
		#estos son llamados desde el metodo privdo de abajo y son
		#accionados con el "before_action" que se encuentra en la parte de
		#arriba.
	end

	def update
		#estos son llamados desde el metodo privdo de abajo y son
		#accionados con el "before_action" que se encuentra en la parte de
		#arriba.

		if @post.update(post_params)
			flash[:notice] = "Post Creado Actualizado"
			redirect_to post_path(@post)
		else
			render :edit
		end
	end

	def  destroy
		#estos son llamados desde el metodo privdo de abajo y son
		#accionados con el "before_action" que se encuentra en la parte de
		#arriba.
		@post.destroy

		flash[:notice] = "Post Creado Eliminado"
		redirect_to posts_path
	end

	private

	def find_post
		@post = Post.find(params[:id])
	end
	def post_params
		params.require(:post).permit(:title,:body)		
	end
end
