require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'
require 'spec/rake/spectask'

spec = Gem::Specification.new do |s|
  s.name = 'Cyrillizer'
  s.version = '0.1.1'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc']
  s.summary = 'Converts (macedonian) text from latin transcript to cyrillic'
  s.homepage = 'http://github.com/vasil/cyrillizer'
  s.description = 'Character conversion from latin alphabet to Macedonian cyrillic alphabet'
  s.author = 'Vasil Taneski'
  s.email = 'vasil.taneski@gmail.com'
  s.files = %w(README.rdoc Rakefile) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

Rake::RDocTask.new do |rdoc|
  files =['README.rdoc', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README.rdoc"
  rdoc.title = "Cyrillizer Docs"
  rdoc.rdoc_dir = 'doc/rdoc'
  rdoc.options << '--line-numbers'
end

Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*.rb']
end
