# frozen_string_literal: true
namespace :user do
  task :check_length_text do
    text = File.read("app/views/home/index.html.erb")
    length = text.chomp.length
    if length > 20
      abort("Length > 20")
    else
      puts("OK!")
    end
  end
end
