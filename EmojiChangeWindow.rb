# coding: utf-8
require 'gtk3'

class EmojiChangeWindow < Gtk::Window

  def initialize()
    super()
    self.set_title("slackstatus変更アプリ")
    self.set_default_size(200,200)
  end


end
