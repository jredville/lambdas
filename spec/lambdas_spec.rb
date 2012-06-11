require 'lambdas'

describe "Included lambas" do
  it "includes a true lambda" do
    Lambdas.l_true.call.should be_true
  end

  it "includes a false lambda" do
    Lambdas.l_false.call.should be_false
  end

  it "includes a nil lambda" do
    Lambdas.l_nil.call.should be_nil
  end

  it "includes a value lambda" do
    Lambdas.l_value(1).call.should == 1
  end

  it "includes an identity lambda" do
    Lambdas.l_identity.call(1).should == 1
  end
end
