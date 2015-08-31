require_relative 'bounding_box'
require 'pry'


class BoundingArea

  attr_reader(:bottom_box, :middle_box, :top_box)

  def initialize(*boxes)
    @boxes = boxes.flatten
  end

  def boxes_contain_point?(x, y)
    if @boxes.empty?
      false
    else
    array_of_answers = []
      @boxes.each do | box |
        if box.contains_point?(x, y)
          array_of_answers << "true"
        else
          array_of_answers << "false"
        end
      end

        if array_of_answers.include?("true")
          return true
        else
          return false
        end
    end
  end

end
