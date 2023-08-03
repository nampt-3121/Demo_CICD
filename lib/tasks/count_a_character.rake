# frozen_string_literal: true

namespace :user do
  task :count_a_character do
    text = File.read("app/views/home/index.html.erb")
    length = text.downcase.gsub(/[àáảãạâầấẩẫậăằắẳẵặ]/, 'a').chomp.count("a")
    if length != 6
      abort("Số lượng kí tự 'a' có trong câu phải bằng 6, vui lòng kiểm tra lại.")
    else
      puts("Kiểm tra số lượng 'a' trong câu đạt yêu cầu.")
    end
  end
end
