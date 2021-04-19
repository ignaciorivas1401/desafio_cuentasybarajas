class CuentaBancaria
    attr_accessor :saldo
    attr_reader :banco, :numero_cuenta
    

    def initialize(banco,numero_cuenta,saldo=0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_pivote)
        self.saldo -= monto
        cuenta_pivote.saldo += monto
    end
end

class Usuario

    attr_reader :nombre_usuario
    attr_accessor :cuenta

    def initialize(nombre_usuario, cuenta = [])
        @nombre_usuario = nombre_usuario
        @cuenta = cuenta
    end
    
    def saldo_total
        suma = 0
        self.cuenta.each do |i|
            suma +=i.saldo
        end
        return suma
    end
end

c1 = CuentaBancaria.new('BCI','12345678',5000)
c2 = CuentaBancaria.new('BICE','12300456',8000)
c1.transferir(5000,c2)
cuenta_de_usuario = Usuario.new('Andres',[c1,c2]) 

#puts c1.saldo
#puts c2.saldo
#puts cuenta_de_usuario.saldo_total
