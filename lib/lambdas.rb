module Lambdas
  extend self
  def l_true
    l_value(true)
  end

  def l_false
    l_value(false)
  end

  def l_nil
    l_value(nil)
  end

  def l_value(val)
    lambda { val }
  end

  def l_identity
    lambda {|a| a}
  end

  def l_y
    lambda { |f| f.call(f) }.call(
      lambda do |g|
        yield(lambda { |*n| g.call(g).call(*n) })
      end)
  end
end
