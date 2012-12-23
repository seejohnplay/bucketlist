class ItemsController < ApplicationController
	def create
		@list = List.find(params[:list_id])
		@item = @list.items.build(params[:item])
		if @item.save
			redirect_to list_path(@list)
		else
			@list.reload
			render 'lists/show'
		end
	end

	def update
		@list = List.find(params[:list_id])
		@item = @list.items.find(params[:id])
		if @item.update_attributes(params[:item])	
			redirect_to list_path(@list)
		else
			@list.reload
			render 'lists/show'
		end
	end
end
