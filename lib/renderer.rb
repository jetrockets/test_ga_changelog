# frozen_string_literal: true

require 'erb'

class Renderer
  def call
    template = File.read('lib/templates/readme.md.erb').gsub(/^  /, '')

    erb = ERB.new(template, trim_mode: '%<>')
    File.write('README.md', erb.result(binding))
  end

  def curated_list
    Curated.descendants.group_by(&:category).sort_by { |category, _| category.name }
  end
end
