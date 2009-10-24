require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'
require 'spec/rake/spectask'

spec = Gem::Specification.new do |s|
  s.name = 'Cyrillizer'
  s.version = '0.1.0'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc']
  s.summary = 'Character conversion from latin alphabet to Macedonian cyrillic alphabet'
  s.description = s.summary
  s.author = 'Vasil Taneski'
  s.email = 'vasil@taneski.com'
  # s.executables = ['']
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
  files =['README', 'LICENSE', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README.rdoc"
  rdoc.title = "Cyrillizer Docs"
  rdoc.rdoc_dir = 'doc/rdoc'
  rdoc.options << '--line-numbers'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end

Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*.rb']
end
