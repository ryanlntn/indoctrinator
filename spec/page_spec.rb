describe Indoctrinator::Page do

  it "should be a class" do
    Indoctrinator::Page.is_a?(Class).should.be.true
  end

  it "should be an instance of ICETutorialPage" do
    page = Indoctrinator::Page.new({})
    page.should.be.kind_of(ICETutorialPage)
  end
end
