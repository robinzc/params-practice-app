class Api::CatsController < ApplicationController
  
  def names
    cat_name = params["name"].upcase
    @message = cat_name
    render "names.json.jb"
  end
  
  def index
    @cats = Cat.all 
    render "index.json.jb"
  end

  def show
    cat_id = params[:id]
    @cat = Cat.find_by(id: cat_id)
    render "show.json.jb"
  end

end
