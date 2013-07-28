# encoding: UTF-8

require_relative './ba_chu_heo_con'
require 'minitest/autorun'

describe Nhà do
  describe 'Nhà rơm' do
    before(:all) { @nhà = Nhà.new('rơm') }

    describe '#vật_liệu' do
      it 'phải bằng rơm' do
        @nhà.vật_liệu.must_equal 'rơm'
      end
    end

    describe '#đổ' do
      describe 'Sức gió 1' do
        it 'phải trả về true' do
          @nhà.đổ?.must_equal true
        end
      end
    end
  end

  describe 'Nhà gỗ' do
    before(:all) { @nhà = Nhà.new('gỗ') }

    describe '#vật_liệu' do
      it 'phải bằng gỗ' do
        @nhà.vật_liệu.must_equal 'gỗ'
      end
    end

    describe '#đổ' do
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
    before(:all) { @nhà = Nhà.new('gạch') }

    describe '#vật_liệu' do
      it 'phải bằng gạch' do
        @nhà.vật_liệu.must_equal 'gạch'
      end
    end

    describe '#đổ' do
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