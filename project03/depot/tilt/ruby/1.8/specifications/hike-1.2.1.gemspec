# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hike}
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sam Stephenson"]
  s.date = %q{2011-08-16}
  s.description = %q{A Ruby library for finding files in a set of paths.}
  s.email = ["sstephenson@gmail.com"]
  s.homepage = %q{http://github.com/sstephenson/hike}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Find files in a set of paths}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
