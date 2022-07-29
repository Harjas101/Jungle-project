def index
  @categories = Category.order(id: desc).all
end

def new 
  @categories= Category.new
end

def create
  @categories = Category.new(categories_params)
end

private

def categories_params 
  params.require (:categories).permit(
    :name
  )
end
end


