module Indoctrinator
  class Tutorial < ICETutorialController
    def self.new(pages)
      tutorial = self.alloc.initWithNibName("ICETutorialController_iPhone", bundle: nil) 
      tutorial.pages = pages
      # turorial.title = nil
      # tutorial.setButton1Block() 
      # tutorial.setButton2Block()
      $t = tutorial
      tutorial
    end

    def pages=(pages)
      self.setPages(Array(pages))
    end

    # def title=(title)
    #   self.setOverlayTitle {
    #     _overlayTitle.setText(title)
    #   }
    # end

    def setOverlayTitle
      @_overlayTitle.setText(nil)
    end
  end
end
#       self.setOverlayTitle(_overlayTitle.setText(title))

# - (void)setOverlayTitle{
#     // ...or change by an UIImageView if you need it.
#     [_overlayTitle setText:@"Welcome"];
# }
