describe Indoctrinator::Tutorial do
  
  def page
    Indoctrinator::Page.new
  end

  def button
    UIButton.new
  end
  
  before do
    @tutorial = Indoctrinator::Tutorial.new([page, page, page])
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

  it "should have no title label by default" do
    @tutorial.title.should.be.nil
  end

  it "should allow you to set a title label" do
    tutorial = Indoctrinator::Tutorial.new([page, page, page], title: "Title")
    tutorial.title.should.be.kind_of(UILabel)
    tutorial.title.text.should == "Title"
  end

  it "should have no buttons by default" do
    @tutorial.button1.should.be.nil
    @tutorial.button2.should.be.nil
  end

  it "should allow you to set button1" do
    tutorial = Indoctrinator::Tutorial.new([page, page, page], button1: button)
    tutorial.button1.should.be.kind_of(UIButton)
  end

  it "should allow you to set button2" do
    tutorial = Indoctrinator::Tutorial.new([page, page, page], button2: button)
    tutorial.button2.should.be.kind_of(UIButton)
  end

  it "should allow you to set both button1 and button2" do
    tutorial = Indoctrinator::Tutorial.new([page, page, page], button1: button, button2: button)
    tutorial.button1.should.be.kind_of(UIButton)
    tutorial.button2.should.be.kind_of(UIButton)
  end

  it "should allow you to set title, button1, and button2" do
    tutorial = Indoctrinator::Tutorial.new([page, page, page], title: "Title", button1: button, button2: button)
    tutorial.title.should.be.kind_of(UILabel)
    tutorial.title.text.should == "Title"
    tutorial.button1.should.be.kind_of(UIButton)
    tutorial.button2.should.be.kind_of(UIButton)
  end
end
