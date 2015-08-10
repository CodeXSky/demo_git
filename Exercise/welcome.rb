#!/usr/bin/env ruby

class MegaChàoMừng
  attr_accessor :danh_sách_tên

  # Create the object
  def initialize(danh_sách_tên = "Thế giới")
    @danh_sách_tên = danh_sách_tên
  end

  # Nói xin chào tới mọi người
  def xin_chào
    if @danh_sách_tên.nil?
      puts "..."
    elsif @danh_sách_tên.respond_to?("each")
      # @danh_sách_tên là danh sách tên, lặp đi lặp lại!
      @danh_sách_tên.each do |name|
        puts "Xin chào #{name}!"
      end
    else
      puts "Xin chào #{@danh_sách_tên}!"
    end
  end

  # Tạm biệt mọi người
  def tạm_biệt
    if @danh_sách_tên.nil?
      puts "..."
    elsif @danh_sách_tên.respond_to?("join")
      # Gộp các thành phần của danh sách bằng dấu phẩy
      puts "Tạm biệt #{@danh_sách_tên.join(", ")}.  Hẹn gặp lại!"
    else
      puts "Tạm biệt #{@danh_sách_tên}.  Hẹn gặp lại!"
    end
  end

end


if __FILE__ == $0
  mg = MegaChàoMừng.new
  mg.xin_chào
  mg.tạm_biệt

  # Đổi tên thành "Zeke"
  mg.danh_sách_tên = "Zeke"
  mg.xin_chào
  mg.tạm_biệt

  # Đổi tên thành danh sách tên
  mg.danh_sách_tên = ["Albert", "Brenda", "Charles",
    "Dave", "Engelbert"]
  mg.xin_chào
  mg.tạm_biệt

  # Đổi thành rỗng
  mg.danh_sách_tên = nil
  mg.xin_chào
  mg.tạm_biệt
end