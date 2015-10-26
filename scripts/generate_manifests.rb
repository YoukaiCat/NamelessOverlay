#!/usr/bin/env ruby
# encoding: utf-8

class ManifestGenerator

def initialize overlay
  @overlay_root = overlay
end

def run
  dirs_to_exclude = %w(. .. .git metadata profiles scripts)
  Dir.entries(@overlay_root).
      select {|subdir| File.stat(@overlay_root + '/' + subdir).directory? }.
      reject {|subdir| dirs_to_exclude.include? subdir }.
      each {|category| process_category category, @overlay_root + '/' + category }
end

def process_category category, category_path
  puts "*** #{category}"
  Dir.entries(category_path).
      select {|subdir| File.stat(category_path + '/' + subdir).directory? }.
      reject {|subdir| %w(. ..).include? subdir }.
      each {|package| process_package package, category_path + '/' + package }
end

def process_package package, package_path
  puts "\t~~~ #{package}"
  Dir.entries(package_path).
      select {|file| File.fnmatch('**.ebuild', file) }.
      each {|ebuild| process_ebuild ebuild, package_path }
end

def process_ebuild ebuild, package_path
  puts "\t\t--- #{ebuild}"
  ebuild_path = package_path + '/' + ebuild
  puts "\t\t\t" + `ebuild #{ebuild_path} manifest`
end

end

script = File.expand_path File.dirname __FILE__
overlay = script + '/..'

ManifestGenerator.new(overlay).run
