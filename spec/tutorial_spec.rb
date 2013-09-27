describe Indoctrinator::Tutorial do
  
  def ipage
    Indoctrinator::Page.new
  end
  
  before do
    @tutorial = Indoctrinator::Tutorial.new([ ipage, ipage, ipage ])
  end

  it "should be a class" do
    Indoctrinator::Tutorial.is_a?(Class).should.be.true
  end

  it "should allow setting an array of pages on instantiation" do
    @tutorial.pages.should.be.kind_of(Array)
    @tutorial.pages.length.should == 3
    @tutorial.pages.first.should.be.kind_of(Indoctrinator::Page)
  end
  
  it "should be an instance of ICETutorialController" do
    @tutorial.should.be.kind_of(ICETutorialController)
  end
end
