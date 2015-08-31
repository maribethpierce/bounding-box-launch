class BoundingBox
  def initialize(x, y, width, height)
    @left =  x
    @right = x + width
    @top = y + height
    @bottom = y
    @width = width
    @height = height
  end

  attr_reader(:width, :height, :left, :right, :top, :bottom)

  def contains_point?(x, y)
    if x >= @left && x <= @right && y >= @bottom && y <= @top
      true
    else
      false
    end
  end
end

# my_square = BoundingBox.new(4, 2, 4, 4)
# if my_square.contains_point?(1, 3)
#   puts "yup"
# else
#   puts "nope"
# end
