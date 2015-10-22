#!/usr/bin/env ruby
# encoding: utf-8

script_path = File.expand_path File.dirname __FILE__
overlay_path = script_path + '/..'

exclude = '. .. metadata profiles scripts'.split

Dir.foreach overlay_path do |subdir|
  subdir_path = overlay_path + '/' + subdir
  if File.stat(subdir_path).directory? && (!exclude.include? subdir) then
    Dir.foreach subdir_path do |package_name|
      package_path = subdir_path + '/' + package_name
      if File.stat(package_path).directory? && (!['.', '..'].include? package_name) then
        ebuild_path = package_path  + '/' + package_name
        puts `ebuild #{ebuild_path}-* manifest`
      end
    end
  end
end
