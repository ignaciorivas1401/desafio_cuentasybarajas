require_relative 'carta'

class Baraja
    attr_accessor :cartas

    def initialize(cartas = [])
        @cartas = cartas
        52.times do |i|
            cartas.push(Carta.new)
        end 
    end

    def barajar
        self.cartas.shuffle
    end

    def sacar
        self.cartas.pop(1)
    end

    def repartir
        mano = []
        5.times do
            mano.push(self.cartas.pop)
        end
        return mano
    end
end

ronda1 = Baraja.new()

#print ronda1.cartas.count
#print ronda1.barajar
#print ronda1.sacar
#print ronda1.repartir