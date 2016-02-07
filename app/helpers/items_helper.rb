module ItemsHelper
  def add_like(id)
    item = Item.find(1)
    item.like = 0
    @current_num_likes = item.like += 1
  end
end
