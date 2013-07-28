# encoding: UTF-8

require_relative './ba_chu_heo_con'
require 'minitest/autorun'

describe 'Chuyện ba chú heo con' do
  before(:all) do
    @sói         = Sói.new
    @heo_út      = Heo.new('út')
    @heo_anh_nhì = Heo.new('anh nhì')
    @heo_cả      = Heo.new('anh cả')
  end

  describe 'Heo em út xây nhà' do
    before(:all) do
      @nhà_rơm = @heo_út.xây_nhà
    end

    it 'nhà phải bằng rơm' do
      @nhà_rơm.vật_liệu.must_be_instance_of Rơm
    end

    describe 'chó sói tấn công' do
      describe 'chó sói thổi với sức gió 1' do
        it 'nhà rơm bị đổ' do
          @sói.thổi(@nhà_rơm, 1)
          @nhà_rơm.bị_đổ.must_equal true
        end
      end
    end
  end

  describe 'Heo anh nhì xây nhà' do
    before(:all) do
      @nhà_gỗ = @heo_anh_nhì.xây_nhà
    end

    it 'nhà phải bằng gỗ' do
      @nhà_gỗ.vật_liệu.must_be_instance_of Gỗ
    end

    describe 'chó sói tấn công' do
      describe 'chó sói thổi với sức gió 1' do
        it 'nhà gỗ không bị đổ' do
          @sói.thổi(@nhà_gỗ, 1)
          @nhà_gỗ.bị_đổ.must_equal false
        end
      end

      describe 'chó sói thổi với sức gió 2' do
        it 'nhà gỗ bị đổ' do
          @sói.thổi(@nhà_gỗ, 2)
          @nhà_gỗ.bị_đổ.must_equal true
        end
      end
    end
  end

  describe 'Heo anh cả xây nhà' do
    before(:all) { @nhà_gạch = @heo_cả.xây_nhà }

    it 'nhà phải bằng gạch' do
      @nhà_gạch.vật_liệu.must_be_instance_of Gạch
    end

    describe 'chó sói tấn công' do
      describe 'chó sói thổi với sức gió 1' do
        it 'nhà gạch không bị đổ' do
          @sói.thổi(@nhà_gạch, 1)
          @nhà_gạch.bị_đổ.must_equal false
        end
      end

      describe 'chó sói thổi với sức gió 2' do
        it 'nhà gạch không bị đổ' do
          @sói.thổi(@nhà_gạch, 2)
          @nhà_gạch.bị_đổ.must_equal false
        end
      end

      describe 'chó sói thổi với sức gió 3' do
        it 'nhà gạch không bị đổ' do
          @sói.thổi(@nhà_gạch, 2)
          @nhà_gạch.bị_đổ.must_equal false
        end
      end
    end
  end
end