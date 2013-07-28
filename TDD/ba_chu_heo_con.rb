# encoding: UTF-8

class Nhà
  attr_accessor :vật_liệu

  def initialize(vật_liệu)
    @vật_liệu = vật_liệu
  end

  def đổ?(sức_gió = 1)
    if @vật_liệu == 'rơm' && sức_gió >= 1
      true
    elsif @vật_liệu == 'gỗ' && sức_gió >= 2
      true
    elsif @vật_liệu == 'gạch'
      false
    else
      false
    end
  end
end