class Meal < ActiveRecord::Base
  belongs_to :menus
  belongs_to :courses
end
