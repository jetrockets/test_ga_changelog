# frozen_string_literal: true

class AwesomeGem < Curated::RubyGem
  package 'awesome_gem'
  info 'Awesome Gem'
  homepage 'https://github.com/awesome_gem/awesome_gem'

  pros 'We like it because it is awesome.'

  cons "We don't like it because it is not awesome."

  comment "
  This is

  a long comment
  "
end
