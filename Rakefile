#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'OutdatedbrowserRails'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'

Bundler::GemHelper.install_tasks

require 'rspec/core'
require 'rspec/core/rake_task'
desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new(:spec => 'app:db:test:prepare')
task :default => :spec

dependencies = {
  javascripts: ['outdatedBrowser.js'],
  stylesheets: ['outdatedBrowser.css']
}

origin = 'vendor/outdated-browser/outdatedbrowser'

desc "Clean assets"
task :clean do
  dependencies.each do |filetype, filenames|
    filenames.each do |filename|
      rm_rf "app/assets/#{filetype}/outdatedbrowser/#{filename}"
    end
  end
end

namespace :generate do
  desc "Generate assets"
  task :assets do
    Rake.rake_output_message "Copying javascripts"
    target_dir = "app/assets/javascripts/outdatedbrowser"
    mkdir_p target_dir
    puts FileUtils.cp(Dir.glob("#{origin}/outdatedBrowser.js"), target_dir)

    Rake.rake_output_message "Copying css files"
    target_dir = "app/assets/stylesheets/outdatedbrowser"
    mkdir_p target_dir
    puts FileUtils.cp(Dir.glob("#{origin}/outdatedBrowser.css"), target_dir)

    Rake.rake_output_message "Copying html files"
    target_dir = "app/assets/javascripts/outdatedbrowser"
    puts FileUtils.cp_r(Dir.glob("#{origin}/lang"), target_dir)
  end
end
