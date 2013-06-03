module Lambdas
  extend self
  def true
    value(true)
  end

  def false
    value(false)
  end

  def nil
    value(nil)
  end

  def noop
    lambda {|*args| }
  end

  def value(val)
    lambda { val }
  end

  def identity
    lambda {|a| a}
  end
  alias_method :i, :identity

  def y
    lambda { |f| f.call(f) }.call(
      lambda do |g|
        yield(lambda { |*n| g.call(g).call(*n) })
      end)
  end
end
L = Lambdas
