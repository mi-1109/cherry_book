def to_hex(r, g, b)
  hex = '#'
  
  #引数として渡された各値を配列に入れ、繰り返し処理
  [r, g, b].each do |n|
    #eachメソッド内部で数値を１６進数に変換した文字列を、ブロックの外で作成したhex変数に連結  
    hex += n.to_s(16).rjust(2, '0')
  end

  #メソッドの戻り値
  hex
end