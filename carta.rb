class Carta

    attr_reader :numero,:pinta

    def initialize
        pintas = ['C','D','E','T']
        @numero = rand(1..13)
        @pinta = pintas.sample
    end

end

=begin
cartas = []
5.times do |i|
    cartas.push(Carta.new)
end 

print cartas 
=end