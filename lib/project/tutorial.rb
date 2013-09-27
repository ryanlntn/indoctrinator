module Indoctrinator
  class Tutorial < ICETutorialController

    attr_accessor :pages

    def initialize(pages)
      @pages = pages
    end
  end
end
