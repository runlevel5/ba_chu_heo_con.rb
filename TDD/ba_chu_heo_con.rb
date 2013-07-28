# encoding: UTF-8

class Nhà
  attr_accessor :vật_liệu

  def initialize(vật_liệu)
    @vật_liệu = vật_liệu
  end

  def đổ?(sức_gió = 1)
    vật_liệu.mức_gió_chịu_được <= sức_gió ? true : false
  end
end

class VậtLiệu
  attr_accessor :mức_gió_chịu_được
end

class Rơm < VậtLiệu
  def initialize
    @mức_gió_chịu_được = 1
  end
end

class Gỗ < VậtLiệu
  def initialize
    @mức_gió_chịu_được = 2
  end
end

class Gạch < VậtLiệu
  def initialize
    @mức_gió_chịu_được = 999
  end
end