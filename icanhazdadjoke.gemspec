Gem::Specification.new do |spec|
  spec.name          = "icanhazdadjoke"
  spec.version       = "0.1.0"
  spec.authors       = ["Mathias Karstädt"]
  spec.email         = ["mathias.karstaedt@gmail.com"]

  spec.summary       = %q{A simple Ruby client for the icanhazdadjoke API.}
  spec.description   = %q{This gem provides a simple interface to fetch jokes from the icanhazdadjoke API.}
  spec.homepage      = "https://github.com/webmatze/icanhazdadjoke"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|pkg|bin)/})
  end
  spec.bindir        = "exe"
  spec.executables   << "icanhazdadjoke"
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
