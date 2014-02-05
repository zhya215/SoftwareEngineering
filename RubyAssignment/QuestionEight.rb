class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s       # make sure it's a string
        attr_reader attr_name            # create the attribute's getter
        attr_reader attr_name+"_history" # create bar_history getter
        #your code here, use %Q for multiline strings
        #create a setter for attr_name.
        #"||=" means that if attr_name_history is nil, set it to [nil]
        class_eval %Q{
          def #{attr_name}=(name) 
            @#{attr_name}=name
            @#{attr_name}_history||=[nil]
            @#{attr_name}_history<<name
          end
        }   
    end
end

 

class Foo
    attr_accessor_with_history :bar
    attr_accessor_with_history :foo
end
f = Foo.new

f.bar = 1
f=Foo.new
f.bar = 2
f.foo=3
print f.bar_history # => if your code works, should be [nil, 1, 2]
print f.foo_history