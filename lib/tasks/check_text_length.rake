# frozen_string_literal: true

namespace :user do
  task :check_text_length do
    text = File.read("app/views/home/index.html.erb")
    length = text.chomp.length
    if length > 30
      abort("Số lượng kí tự của câu đang có nhiều hơn 30, vui lòng kiểm tra lại.")
    else
      puts("Kiểm tra số lượng kí tự đạt yêu cầu.")
    end
  end
end
