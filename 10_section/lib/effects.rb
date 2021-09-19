module Effects
    def self.echo(num)
        ->(words) do
            words.chars.map { |s| s == ' ' ? s : s * num }.join
        end
    end

    def self.loud(num)
        ->(words) do
            words.chars.map { |s| s.is_a?(String) ? s.upcase : s }.join << '!' * num
        end
    end

    def self.reverse
        ->(words) do
            words.split(' ').map(&:reverse).join(' ')
        end
    end
end