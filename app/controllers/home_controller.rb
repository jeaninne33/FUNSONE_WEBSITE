class HomeController < ApplicationController

layout 'application'
	def index
		@coordinador = Coordinador.all.order('created_at DESC')
		
	end
end
