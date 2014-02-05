class CartesianProduct
  include Enumerable
  def initialize(collection1, collection2)
    @result_pairs=product(collection1, collection2)
    return @result_pairs
  end
  
  def product(collection1, collection2)
    result_pairs=[]
    collection1.each do |m|
      collection2.each do |n|
        new_arr=[m,n]
        result_pairs<<new_arr
      end
    end
    return result_pairs
  end
  
  def each
    @result_pairs.each do |m| yield(m) #passing the parameter m to the block
    end
  end
end
c = CartesianProduct.new([:a,:b], [4,5])

c.each { |elt| puts elt.inspect }