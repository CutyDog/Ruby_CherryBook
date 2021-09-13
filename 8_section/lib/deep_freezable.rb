module DeepFreezable
  def deep_freeze(array_or_hash)
    # 配列自身をfreeze
    array_or_hash.freeze
    
    case array_or_hash
    # Arrayの場合
    when Array
      # 配列の各要素をfreeze
      array_or_hash.each do |element|
        element.freeze
      end
    # Hashの場合
    when Hash
      # 配列の各要素をfreeze
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
  end
end