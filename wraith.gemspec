# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wraith/version'

Gem::Specification.new do |spec|
  spec.name          = "selenium-wraith"
  spec.version       = Wraith::VERSION
  spec.authors       = ["Andrew Tekle-Cadman"]
  spec.email         = ["futurevisibleltd@gmail.com"]
  spec.summary       = 'Selenium-Wraith is an extension of the Wraith screenshot comparison tool, originally created by developers at BBC News.'
  spec.description   = 'Selenium-Wraith is an extension of the Wraith screenshot comparison tool, originally created by developers at BBC News.
                        It has been extended by Andrew Tekle-Cadman of Future Visible Ltd. to cover in browser testing, browser based comparison
                        and page sub-component comparison. See README file for full details.
                        Please see http://github.com/bbc-news/wraith for information on the
                        original BBC Wraith gem'
  spec.homepage      = "http://www.futurevisible.com"
  spec.license       = "Apache 2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "rspec", '>= 2.8'

  spec.add_runtime_dependency "rake"
  spec.add_runtime_dependency "image_size"
  spec.add_runtime_dependency "anemone"
  spec.add_runtime_dependency "robotex"
  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "log4r"
  spec.add_runtime_dependency "selenium-webdriver"
  spec.add_runtime_dependency "thor"
end
