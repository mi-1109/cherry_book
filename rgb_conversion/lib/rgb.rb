#最初の繰り返し処理ではhexに'#'が入る
#ブロック内の hex + n.to_s(16).rjust(2, '0') で作成された文字列は、次の繰り返し処理のhexに入る
# 繰り返し処理が最後まで到達したら、ブロックの戻り値がinjectメソッド自身の戻り値になる
def to_hex(r, g, b)  
  [r, g, b].inject('#') do |hex, n| 
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  #引数の文字列から3つの１６進数を引き出す（文字列から１６真数の文字列を2文字ずつ取り出す）
  r, g, b = hex[1..2], hex[3..4], hex[5..6]

  #mapメソッドでブロックの戻り値を配列の要素にして新しい配列を返す
  [r, g, b].map do |s| 
    s.hex
  end
end