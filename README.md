# Indoctrinator

Indoctrinator is a RubyMotion gem that provides a Path style tutorial view for iOS applications. Utilizing the [ICETutorial](https://github.com/icepat/ICETutorial) pod, indoctrinator makes it easy to add a tutorial slideshow to your app.

## Installation

### Bundler

Add this line to your application's Gemfile:

    gem 'indoctrinator'

And then execute:

    $ bundle

### Rakefile

Currently there is a bug with [motion-cocoapods](https://github.com/HipByte/motion-cocoapods/issues/38) that doesn't allow us to automatically include an ObjC library automatically.  Because of this, you will need to edit your Rakefile as follows:

```ruby
app.pods do
  pod 'ICETutorial'
end
```

## Usage

```ruby
# A simple tutorial consisting of three pages
tut1 = Indoctrinator::Page.new(image: "tutorial1")
tut2 = Indoctrinator::Page.new(image: "tutorial2")
tut3 = Indoctrinator::Page.new(image: "tutorial3")
Indoctrinator::Tutorial.new([tut1, tut2, tut3])

# Tutorials may also have a title
Indoctrinator::Tutorial.new([tut1, tut2, tut3], title: "My Tutorial")

# More to come...
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
