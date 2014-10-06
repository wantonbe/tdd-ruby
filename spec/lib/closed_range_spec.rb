require "spec_helper"
require "closed_range"

# 【例】
# [3,8]
# -> 下端点 (lower endpoint) が3, 上端点 (upper endpoint) が8 である整数閉区間
# -> 3 と 8 は区間に含まれます

describe "Closed_Range" do
  describe "下端点と上端点を与えて閉区間を生成する" do
    before(:all) do
      @c3to8 = ClosedRange.new(3, 8)
    end

    it "閉区間から下端点を取得する" do
      expect(@c3to8.getLowerEndpoint()).to eq 3
    end

    it "閉区間から上端点を取得する" do
      expect(@c3to8.getUpperEndpoint()).to eq 8
    end
  end

  describe "エラーテスト" do
    it "下端点と上端点の順序が異なる場合、RuntimeError を返す" do
      expect { ClosedRange.new(8, 3) }.to raise_error(RuntimeError, "下端点と上端点の順序が間違っている")
    end
  end
end
