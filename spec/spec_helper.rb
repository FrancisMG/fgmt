$: << File.expand_path("../../lib", __FILE__)
require "fgmt"

RSpec::Matchers.define :have_constant do |const|
  match do |owner|
    owner.const_defined?(const)
  end
end
