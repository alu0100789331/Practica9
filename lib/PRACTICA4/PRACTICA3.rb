
class Comida
    attr_reader :Por_IngDia, :Descripcion, :Porcion_reco, :Peso
    
    def initialize(por_ingdia, descripcion, porcion_reco)
       @Por_IngDia = por_ingdia
       @Descripcion = descripcion
       @Porcion_reco = porcion_reco
    end
    
    def get_poringdia()
        @Por_IngDia
    end
    
    def get_descripcion()
        @Descripcion
    end
    
    def get_porcionrecomen()
        @Porcion_reco
    end
    
    def formatear()
       @Por_IngDia = nil
       @Descripcion = nil
       @Porcion_reco = nil
       @Peso = nil
    end
    
    def mostrar_comida()
       print "- ", @Descripcion,", ",@Porcion_reco,", ",@Por_IngDia,"gr"
       puts
    end
end

class Dieta
    attr_reader :Titulo, :Platos, :VCT, :P_proteinas, :P_grasas, :P_hidratos, :Por_dieta
    
    def initialize(titulo, vct, p_proteinas, p_grasas, p_hidratos,p_dieta)
       @Titulo = titulo
       @Platos = Array.new()
       @VCT = vct
       @P_proteinas = p_proteinas
       @P_grasas = p_grasas
       @P_hidratos = p_hidratos
       @P_dieta = p_dieta
       @n_platos = 0
    end
    
    def formatear()
       @Titulo = nil
       @Platos = nil
       @VCT = nil
       @P_proteinas = nil
       @P_grasas = nil
       @P_hidratos = nil
       @P_dieta = nil
       @n_platos = 0
    end
    def get_pdieta()
        @P_dieta
    end
    
    def get_size()
        @n_platos
    end
    
    def push_plato(plato)
        @Platos.push(plato)
        @n_platos = @n_platos+1
    end 
    
    def get_titulo()
        @Titulo
    end

    def get_vct()
        @VCT
    end
    
    def get_pproteinas()
        @P_proteinas
    end
    
    def get_pgrasas()
        @P_grasas
    end
    
    def get_phidratos()
        @P_hidratos
    end
    
    def get_platos()
        iterador=0
        while(iterador < get_size())
        @Platos[iterador].mostrar_comida()
        iterador = iterador + 1
        end
    end
    def to_s()
       print @Titulo,"(",@P_dieta,")"
       puts 
       iterador=0
        while(iterador < get_size())
        @Platos[iterador].mostrar_comida()
        iterador = iterador + 1
        end
        print "V.C.T  | %", "    ", @VCT," | ", @P_proteinas,"% - ",@P_grasas,"% - ",@P_hidratos,"%"
        puts
    end
    
    
    def mostrar_dieta()
       print @Titulo,"(",@P_dieta,")"
       puts 
       iterador=0
        while(iterador < get_size())
        @Platos[iterador].mostrar_comida()
        iterador = iterador + 1
        end
        print "V.C.T  | %", "    ", @VCT," | ", @P_proteinas,"% - ",@P_grasas,"% - ",@P_hidratos,"%"
        puts
    end
end





#    @comida1 = Comida.new("200","Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharón")
#    @comida2 = Comida.new("100","Escalope de ternera","1 bistec mediano")
#    @comida3 = Comida.new("120","Ensalada basica con zanahoria rallada","guarnicion")
#    @comida4 = Comida.new("180","Mandarina","1 grande")
#    @comida5 = Comida.new("20","Pan de trigo integral","1 rodaja")
#    @dieta1 = Dieta.new("Almuerzo",786.9,19,34,47,"30 - 35%")
#        @dieta1.push_plato(@comida1)
#        @dieta1.push_plato(@comida2)
#        @dieta1.push_plato(@comida3)
#        @dieta1.push_plato(@comida4)
#        @dieta1.push_plato(@comida5)
#            @dieta1.mostrar_dieta()