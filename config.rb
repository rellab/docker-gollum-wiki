require 'rubygems'
require 'gollum/app'

Precious::App.set(:wiki_options, {
  :live_preview => false,
  :allow_uploads => true,
  :per_page_uploads => true,
  :allow_editing => true,
  :css => true,
  :js => true,
  :mathjax => true,
  :h1_title => true,
})

