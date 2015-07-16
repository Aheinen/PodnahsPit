helpers do
  def find_menus
    @dinner_appetizers = Meal.where(course_id: 2)
    @dinner_plates = Meal.where(course_id: 3)
    @dinner_sides = Meal.where(course_id: 5)
    @dinner_sandwiches = Meal.where(course_id: 4)
    @dinner_desserts = Meal.where(course_id: 6)
    @dinner = [@dinner_appetizers, @dinner_plates, @dinner_sides, @dinner_sandwiches, @dinner_desserts]

    @breakfast_plates = Meal.where(course_id: 1)
    @breakfast = [@breakfast_plates]
  end
end