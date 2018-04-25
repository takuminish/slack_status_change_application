# coding: utf-8

require 'gtk3'
require './EmojiChangeWindow.rb'
require './slack.rb'
require 'dotenv'

Dotenv.load

TOKEN = ENV["SLACK"]
p TOKEN
window = EmojiChangeWindow.new


button_box = Gtk::ButtonBox.new(:vertical)
window.add(button_box)

button = Gtk::Button.new(label: "takuminish")
button.signal_connect "clicked" do |w|
  status_change(":takuminish:",TOKEN)
end
button2 = Gtk::Button.new(label: "tabetai")
button2.signal_connect "clicked" do |w|
  status_change(":tabetai:", TOKEN)
end

button_box.add(button)
button_box.add(button2)
window.show_all
window.signal_connect("destroy") {Gtk.main_quit}
Gtk.main
