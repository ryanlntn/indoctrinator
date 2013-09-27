module Indoctrinator
  class Page < ICETutorialPage
    def self.new(args={})
      self.alloc.initWithSubTitle(args[:subtitle], description: args[:description], pictureName: args[:image])
    end
  end
end
