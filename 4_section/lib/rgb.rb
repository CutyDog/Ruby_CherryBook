def to_hex(r, g, b)
    [r, g, b].inject('#') do |hex, color|
        hex << color.to_s(16).rjust(2,'0')
    end
end

def to_ints(hex)
    1.step(5, 2).map do |s|
        hex[s..s+1].hex
    end
end