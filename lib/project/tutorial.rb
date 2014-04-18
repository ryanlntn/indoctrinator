module Indoctrinator
  class Tutorial < ICETutorialController

    def self.new(pages, args={})
      tutorial = self.alloc.initWithNibName("ICETutorialController_iPhone", bundle: nil)

      # For some reason the ICETutorial CocoaPod has issues with disabling autoscrolling
      # It will scroll once (No matter what autoScrollEnabled is set to), and then stops on second page when disabled
      # This fixes that issue
      tutorial.autoScrollEnabled = args[:autoScrollEnabled] if args[:autoScrollEnabled] != nil
      tutorial.autoScrollLooping = args[:autoScrollLooping] if args[:autoScrollLooping] != nil
      tutorial.autoScrollDurationOnPage = args[:autoScrollDurationOnPage] || (args[:autoScrollEnabled] == true) ? tutorial.autoScrollDurationOnPage : Float::INFINITY

      tutorial.pages = pages
      tutorial.title = args[:title]
      tutorial.remove_buttons
      tutorial.button1 = args[:button1]
      tutorial.button2 = args[:button2]
      tutorial
    end

    def viewDidAppear(animated)
      super
      self.center_pager
    end

    def pages=(pages)
      @pages = pages
      self.setPages(Array(pages))
    end

    def pages
      @pages
    end

    def title=(label)
      return self.remove(:title) unless label
      if label.is_a?(String)
        self.title.text = label if self.title
      else
        self.remove(:title)
        self.view.addSubview label
      end
    end

    def title
      @title ||= self.view.subviews.find{ |v| v.is_a?(UILabel) }
    end

    def remove_buttons
      self.view.subviews.select{ |v| v.is_a?(UIButton) }.each(&:removeFromSuperview)
    end

    def button1=(button)
      @button1 = button
      self.view.addSubview @button1
    end

    def button1
      @button1
    end

    def button2=(button)
      @button2 = button
      self.view.addSubview @button2
    end

    def button2
      @button2
    end

    def center_pager
      screen_size = UIScreen.mainScreen.bounds.size
      pc = self.view.subviews.find{ |v| v.is_a?(UIPageControl) }
      pc.frame = [[0, screen_size.height - 100],[screen_size.width, 36]]
    end

    def remove(v)
      self.send(v).removeFromSuperview if self.send(v) && self.send(v).respond_to?(:removeFromSuperview)
      self.instance_variable_set "@#{v}", nil
    end
  end
end
