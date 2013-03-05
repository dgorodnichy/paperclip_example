1. rails new SliceAutomation

1. add gem to Gemfile => gem 'paperclip'

1. bundle install

1. rails g scaffold screenshot title:string

1. rake db:migrate

1. rails generate paperclip screenshot picture
screenshot [model]
picture [field]

1. rake db:migrate 

1. In Model:

    class Screenshot < ActiveRecord::Base
    attr_accessible :title, :picture
    has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    end

1. In Views:

    <%= form_for @screenshot, :url => screenshots_path, :html => { :multipart => true } do |f| %>
    <%= f.file_field :picture %>
    <% end %>

    <%= image_tag @user.avatar.url %>
    <%= image_tag @user.avatar.url(:medium) %>
    <%= image_tag @user.avatar.url(:thumb) %>
=============

http://rubydoc.info/gems/paperclip/3.4.1/frames
