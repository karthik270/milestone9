class Customer < ActiveRecord::Base
    def to_pleasant_string
        "#{id}, #{login_id}"
    end
    end