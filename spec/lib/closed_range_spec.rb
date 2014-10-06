require "spec_helper"
require "closed_range"

# 【例】
# [3,8]
# -> 下端点 (lower endpoint) が3, 上端点 (upper endpoint) が8 である整数閉区間
# -> 3 と 8 は区間に含まれます
describe "Closed_Range" do
  # before の適用範囲は describe で閉じれます
  # describe はネストできます
  describe "下端点と上端点を与えて閉区間を生成する" do
    before(:all) do
      # before はspec毎に事前にやってほしいことを書くので expect とかはいらないです
      # ok! と思ったけど、利用するitで参照できるようにしないと駄目ですね @c3to8 で行けます ok
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
      # raise_error をとるときは expect {}.to raise_error() でないと駄目みたいです
      expect { ClosedRange.new(8, 3) } .to raise_error(RuntimeError, "下端点と上端点の順序が間違っている")
    end
  end
end
