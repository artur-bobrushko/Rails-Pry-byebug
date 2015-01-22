binding.pry

#
# Toy class for testing steps
#
class SteppingExample
  undef method_a if method_defined? :method_a
  undef method_b if method_defined? :method_b
  undef method_c if method_defined? :method_c

  def method_a
    z = 2
    z + method_b
  end

  def method_b
    c = Math::PI / 2
    c += method_c
    c + 1
  end

  def method_c
    z = 4
    z
  end
end

ex = SteppingExample.new.method_a
2.times do
  ex += 1
end

ex
