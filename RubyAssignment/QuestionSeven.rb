class Dessert
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  def name
    @name
  end
  def calories
    @calories
  end
  def name=(new_name)
    @name=new_name
  end
  def calories=(new_calories)
    @calories=new_calories
  end
  def healthy?
    return @calories<200
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name=name
    @calories=calories
    @flavor=flavor
  end
  def delicious?
    return !(@flavor === "black licorice")
  end
end
bean=JellyBean.new("bean", 300, "black licorice")
puts bean.healthy?
