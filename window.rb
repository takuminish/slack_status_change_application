require 'gtk3'
require './main.rb'

TOKEN='xoxp-4968377563-221298001142-352601673827-436ef8605c2f278ba0bc57c47c2fdf65'

window = Gtk::Window.new

window.set_title("hoge")
window.set_default_size(200,200)

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
