require 'lambdas'

describe "Included lambas" do
  it "includes a true lambda" do
    L.true.call.should be_true
  end

  it "includes a false lambda" do
    L.false.call.should be_false
  end

  it "includes a nil lambda" do
    L.nil.call.should be_nil
  end

  it "includes a value lambda" do
    L.value(1).call.should eq 1
  end

  it "includes an identity lambda" do
    L.identity.call(1).should eq 1
  end

  it "includes an identity lambda aliased to i" do
    L.i.call(1).should eq 1
  end

  it "includes a noop lambda" do
    L.noop.call(1).should be_nil
  end
end
