class Todo < ActiveRecord::Base
    def to_pleasant_string
        "#{id}, #{food_item}, #{quantity} #{price}"
    end
    end