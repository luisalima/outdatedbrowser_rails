# OutdatedbrowserRails

This project bundles the excellent Burocratik's
[Outdated Browser](https://github.com/burocratik/outdated-browser)
detector for use with the rails 4.0+ asset pipeline.

[![Gem Version](https://badge.fury.io/rb/outdatedbrowser_rails.svg)](http://badge.fury.io/rb/outdatedbrowser_rails)

## About

The version numbers of this gem follow the versioning of
[Outdated Browser](https://github.com/burocratik/outdated-browser),
and the gem follows the `feature/languages` gem, which includes
translations for several languages. The gem uses `I18n.locale` to select the correct locale, and falls back to `en` if the selected locale does not exist.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'outdatedbrowser_rails'
```

## Usage

### 1. Include Outdated Browser assets

Add this line to your `application.js`:

```js
//= require outdatedbrowser/outdatedBrowser
```

Add this line to your `application.css` || `application.scss`:

```css
//= require outdatedbrowser/outdatedBrowser
```
### 2. Require Outdated Browser

In the view where you want to use this, add:

```erb
<%= render 'outdatedbrowser/outdatedbrowser' %>
```

At the **bottom** of the body (make sure it's included **after**
_application.js_), add:

```erb
<%= javascript_include_tag 'outdatedbrowser/require_outdatedbrowser' %>
```

### Testing the integration in your app

* Of course, ideally use an outdated browser to test.
* With an up-to-date browser:
 * In the view where you included the partial, check that `#outdated`
   is present.
 * See how it looks: `$('#outdated').show()`

## Contributing

Feel free to open an issue if you find something that could be improved.

Here are a couple of things worth noting:

* This is a mountable rails engine tested with `rspec` and `capybara`.
  For more info or a good reference to make your own, see
  [this good tutorial](http://viget.com/extend/rails-engine-testing-with-rspec-capybara-and-factorygirl).
* The reference to `outdatedbrowser` is a git submodule. For a good
  reference on how to update git submodules, see [this](https://chrisjean.com/git-submodules-adding-using-removing-and-updating/).
* Bundle Install
* The rake task `rake generate:assets` copies the assets from the
  `vendor/outdated-browser` folder (which is a git submodule) to the
  engine `app` folder. This is needed to get the tests to pass!
* To run tests, use `rspec spec`.
* The rake task `rake clean` cleans the copied assets. You can run this after you have the tests passing to remove the copied assets.

Finally, to contribute:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Run tests using `rspec spec`, and make sure they are green!
4. Add tests to `spec/features`, if necessary.
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request
