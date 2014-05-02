class WelcomeController < ApplicationController
  def index
  	@keyword = params[:keyword]

  	@results = Employment.all 
  	if(@keyword)
  		if(@keyword != "")
  			@results = []
		  	@results.concat(Employment.where ["lower(position) LIKE ?", "%#{@keyword.downcase}%"])
		  	@results.concat(Employment.where ["lower(company) LIKE ?", "%#{@keyword.downcase}%"])
		    @results.concat(Employment.where ["lower(description) LIKE ?", "%#{@keyword.downcase}%"])
		
		end
	end
  	@results = @results.uniq
  end


end
