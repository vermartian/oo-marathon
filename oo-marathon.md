For this lesson, you will build the "Zooniverse", a fictional location from the television series, ["The Mighty Boosh"](http://www.bbc.co.uk/comedy/mightyboosh/clips/episodes_series1.shtml).

Let the tests drive your development.


## Objectives

* Building objects in ruby
* Object composition
* TDD


## Instructions

Download the lesson with `et`, and run the test suite:

```
$ et get oo-marathon
$ cd oo-marathon
$ bundle
$ rake spec
rake spec
/Users/rd/.rubies/ruby-2.0.0-p643/bin/ruby -I/Users/rd/.gem/ruby/2.0.0/gems/rspec-support-3.2.2/lib:/Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb
/Users/rd/launch/curriculum/lessons/oo-marathon/spec/spec_helper.rb:4:in `require_relative': cannot load such file -- /code/horizon/oo-marathon/lib/cage (LoadError)
  from /Users/rd/launch/curriculum/lessons/oo-marathon/spec/spec_helper.rb:4:in `<top (required)>'
  from /Users/rd/.rubies/ruby-2.0.0-p643/lib/ruby/site_ruby/2.0.0/rubygems/core_ext/kernel_require.rb:54:in `require'
  from /Users/rd/.rubies/ruby-2.0.0-p643/lib/ruby/site_ruby/2.0.0/rubygems/core_ext/kernel_require.rb:54:in `require'
  from /Users/rd/launch/curriculum/lessons/oo-marathon/spec/cage_spec.rb:1:in `<top (required)>'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/configuration.rb:1226:in `load'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/configuration.rb:1226:in `block in load_spec_files'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/configuration.rb:1224:in `each'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/configuration.rb:1224:in `load_spec_files'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/runner.rb:97:in `setup'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/runner.rb:85:in `run'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/runner.rb:70:in `run'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib/rspec/core/runner.rb:38:in `invoke'
  from /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/exe/rspec:4:in `<main>'
/Users/rd/.rubies/ruby-2.0.0-p643/bin/ruby -I/Users/rd/.gem/ruby/2.0.0/gems/rspec-support-3.2.2/lib:/Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/lib /Users/rd/.gem/ruby/2.0.0/gems/rspec-core-3.2.3/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed
```

This error message occurred because it is looking for a file called `cage.rb`, and it doesn't exist. Creating this file will get me to the next step.

Work through this challenge by letting the tests guide the construction of the software.
