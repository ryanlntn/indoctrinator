module Indoctrinator
  class Page < ICETutorialPage
    def initialize(args={})
      self.initWithSubTitle(args[:subtitle], description: args[:description], pictureName: args[:image])
    end
  end
end
