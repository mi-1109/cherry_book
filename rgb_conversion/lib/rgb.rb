#最初の繰り返し処理ではhexに'#'が入る
#ブロック内の hex + n.to_s(16).rjust(2, '0') で作成された文字列は、次の繰り返し処理のhexに入る
# 繰り返し処理が最後まで到達したら、ブロックの戻り値がinjectメソッド自身の戻り値になる

def to_hex(r, g, b)  
  [r, g, b].inject('#') do |hex, n| 
    hex + n.to_s(16).rjust(2, '0')
  end
end