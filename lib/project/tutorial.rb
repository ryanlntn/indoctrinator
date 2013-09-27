module Indoctrinator
  class Tutorial < ICETutorialController

    def self.new(pages, args={})
      tutorial = self.alloc.initWithNibName("ICETutorialController_iPhone", bundle: nil) 
      tutorial.pages = pages
      tutorial.title = args[:title]
      # tutorial.setButton1Block(lambda {nil}) 
      # tutorial.setButton2Block(lambda {nil})
      $t = tutorial
      tutorial
    end

    def pages=(pages)
      self.setPages(Array(pages))
    end

    def title=(label)
      return self.remove_title unless label
      if label.is_a?(String)
        self.title.text = label if self.title
      else
        self.remove_title
        self.view.addSubview label
      end
    end

    def title
      @title ||= self.view.subviews.find{ |v| v.is_a?(UILabel) }
    end

    def remove_title
      self.title.removeFromSuperview if self.title && self.title.respond_to?(:removeFromSuperview)
      @title = nil
    end

  end
end
