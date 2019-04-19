$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'
require 'bundler'
Bundler.require

router = Router.new
router.perform