# 整数閉区間
class ClosedRange
  # 下端点と上端点を与えて閉区間を生成する
  def initialize(x, y)
    if x > y then
      raise RuntimeError, "下端点と上端点の順序が間違っている"
    end

    @lowerEndpoint = x
    @upperEndpoint = y
  end
  
  # 閉区間から下端点を取得する
  def getLowerEndpoint
    return @lowerEndpoint
  end
  
  # 閉区間から上端点を取得する
  def getUpperEndpoint
    return @upperEndpoint
  end
end