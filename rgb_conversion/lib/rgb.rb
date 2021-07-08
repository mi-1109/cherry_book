def to_hex(r, g, b)
  # "#000000"
  '#' +
    r.to_s(16).rjust(2, '0') +
    g.to_s(16).rjust(2, '0') +
    b.to_s(16).rjust(2, '0')

end