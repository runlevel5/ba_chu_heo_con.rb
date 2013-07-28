# encoding: UTF-8

require_relative './ba_chu_heo_con'
require 'minitest/autorun'

describe VậtLiệu do
  describe Rơm do
    before { @rơm = Rơm.new }
    describe '#mức_gió_chịu_được' do
      it 'phải trả về 1' do
        @rơm.mức_gió_chịu_được.must_equal 1
      end
    end
  end

  describe Gỗ do
    before { @gỗ = Gỗ.new }
    describe '#mức_gió_chịu_được' do
      it 'phải trả về 2' do
        @gỗ.mức_gió_chịu_được.must_equal 2
      end
    end
  end

  describe Gạch do
    before { @gạch = Gạch.new }
    describe '#mức_gió_chịu_được' do
      it 'phải trả về 999' do
        @gạch.mức_gió_chịu_được.must_equal 999
      end
    end
  end
end

describe Nhà do
  describe 'Nhà rơm' do
    before(:all) { @nhà = Nhà.new(Rơm.new) }

    describe '#vật_liệu' do
      it 'phải trả về đối tượng lớp Rơm' do
        @nhà.vật_liệu.must_be_instance_of Rơm
      end
    end

    describe '#đổ?' do
      describe 'Sức gió 1' do
        it 'phải trả về true' do
          @nhà.đổ?.must_equal true
        end
      end
    end
  end

  describe 'Nhà gỗ' do
    before(:all) { @nhà = Nhà.new(Gỗ.new) }

    describe '#vật_liệu' do
      it 'phải trả về đối tượng lớp gỗ' do
        @nhà.vật_liệu.must_be_instance_of Gỗ
      end
    end

    describe '#đổ?' do
      describe 'Sức gió 1' do
        it 'phải trả về false' do
          @nhà.đổ?.must_equal false
        end
      end

      describe 'Sức gió 2' do
        it 'phải trả về true' do
          @nhà.đổ?(2).must_equal true
        end
      end
    end
  end

  describe 'Nhà gạch' do
    before(:all) { @nhà = Nhà.new(Gạch.new) }

    describe '#vật_liệu' do
      it 'phải trả về đối tượng lớp  gạch' do
        @nhà.vật_liệu.must_be_instance_of Gạch
      end
    end

    describe '#đổ?' do
      describe 'Sức gió 1' do
        it 'phải trả về false' do
          @nhà.đổ?.must_equal false
        end
      end

      describe 'Sức gió 2' do
        it 'phải trả về false' do
          @nhà.đổ?(2).must_equal false
        end
      end

      describe 'Sức gió 3' do
        it 'phải trả về false' do
          @nhà.đổ?(3).must_equal false
        end
      end
    end
  end
end