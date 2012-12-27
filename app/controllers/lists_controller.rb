class ListsController < ApplicationController
	def index
		@lists = List.order("updated_at DESC")
	end

	def new
		@list = List.new
	end

	def create
		@list = List.new(params[:list])
		if @list.save
			redirect_to(lists_path, :notice => 'List was successfully created.')
		else
			render 'new'
		end
	end

	def show
		@list = List.find(params[:id])
		@item = @list.items.build
	end

end
