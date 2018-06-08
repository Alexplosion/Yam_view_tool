
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yam_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "yam_view_tool"
  spec.version       = YamViewTool::VERSION
  spec.authors       = ["Alexandre"]
  spec.email         = ["alex.yam@outlook.fr"]

  spec.summary       = %q{Very basic gem that add copyrights on your views.}
  spec.description   = %q{Provides generated HTML data for rails apps.}
  spec.homepage      = "https://github.com/Alexplosion"
  spec.license       = "MIT"

 

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
