class GroupsController < ApplicationController

	def index
		@groups = current_user.groups.order('created_at DESC')
	end

	def new
		@group = Group.new
	end

	def create
		
	end
end
