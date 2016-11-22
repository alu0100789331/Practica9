require "spec_helper"

describe "Practica4" do
  before(:all) do
  @Lista_doble_tony = Lista_Doblemente_Enlazada.new()
  
  @comida11 = Comida.new("200","Leche desnatada","1 vaso")
  @comida12 = Comida.new("10","Cacao instantaneo","1 c/sopera")
  @comida13 = Comida.new("40","Cereales de desayuno de hojuelas","1 bol pequeño")
  @comida14 = Comida.new("10","Almendras laminadas","2 c/sopera")
    @comida1 = Dieta.new("DESAYUNO",288.0,17,21,62,"15%")
      @comida1.push_plato(@comida11)
      @comida1.push_plato(@comida12)
      @comida1.push_plato(@comida13)
      @comida1.push_plato(@comida14)
  
  @comida21 = Comida.new("120","Cerezas","10-12 unidades medianas")
  @comida22 = Comida.new("40","Galletas bifidus con sesamo","4 unidades")
    @comida2 = Dieta.new("MEDIA MAÑANA",255.5,7,24,69,"10%")
      @comida2.push_plato(@comida21)
      @comida2.push_plato(@comida22)
  
    @comida31 = Comida.new("200","Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharón")
    @comida32 = Comida.new("100","Escalope de ternera","1 bistec mediano")
    @comida33 = Comida.new("120","Ensalada basica con zanahoria rallada","guarnicion")
    @comida34 = Comida.new("180","Mandarina","1 grande")
    @comida35 = Comida.new("20","Pan de trigo integral","1 rodaja")
     @comida3 = Dieta.new("ALMUERZO",785.9,19,32,47,"30-35%")
      @comida3.push_plato(@comida31)
      @comida3.push_plato(@comida32)
      @comida3.push_plato(@comida33)
      @comida3.push_plato(@comida34)
      @comida3.push_plato(@comida35)
      
    @comida41 = Comida.new("46","Galletas de leche con chocolate y yogur","4 unidades")
    @comida42 = Comida.new("110","Flan de vainilla sin huevo","1 unidad")
      @comida4 = Dieta.new("MERIENDA",313.6,10,30,60,"15%")
        @comida4.push_plato(@comida41)
        @comida4.push_plato(@comida42)
        
    @comida51 = Comida.new("200","Crema de bubango","2 cucharón")
    @comida52 = Comida.new("150","Tortilla campesina con espinacas","1 cuña grande")
    @comida53 = Comida.new("150","Tomate en dados con atun","5 a 6 c/soperas")
    @comida54 = Comida.new("120","Piña natural o en su jugo picada","5 c/soperas")
    @comida55 = Comida.new("20","Pan de trigo integral","1 rodaja")
     @comida5 = Dieta.new("ALMUERZO",785.9,19,32,47,"30-35%")
      @comida5.push_plato(@comida51)
      @comida5.push_plato(@comida52)
      @comida5.push_plato(@comida53)
      @comida5.push_plato(@comida54)
      @comida5.push_plato(@comida55)
  
  @node_comida1 = Node.new(@comida1,nil,nil)
  @node_comida2 = Node.new(@comida2,nil,nil)
  @node_comida3 = Node.new(@comida3,nil,nil)
  @node_comida4 = Node.new(@comida4,nil,nil)
  @node_comida5 = Node.new(@comida5,nil,nil)
  
  @nodo_prueba1 = Node.new(@comida1,nil,nil)
  @nodo_prueba2 = Node.new(@comida2,nil,nil)
  @lista_prueba = Lista_Doblemente_Enlazada.new()
  @lista_prueba.push_start(@nodo_prueba1)
  @lista_prueba.push_start(@nodo_prueba2)
  
  @Dieta_Por_Alimentos = Por_Alimentos.new("Almuerzo",786.9,19,34,47,"30 - 35%","Vegetariano")
    @Dieta_Por_Alimentos.push_plato(@comida51)
    @Dieta_Por_Alimentos.push_plato(@comida52)
    @Dieta_Por_Alimentos.push_plato(@comida53)
    @Dieta_Por_Alimentos.push_plato(@comida54)
    @Dieta_Por_Alimentos.push_plato(@comida55)

  @Dieta_Por_Edad = Por_Edad.new("Almuerzo",786.9,19,34,47,"30 - 35%","De 4 a 8")
    @Dieta_Por_Edad.push_plato(@comida51)
    @Dieta_Por_Edad.push_plato(@comida52)
    @Dieta_Por_Edad.push_plato(@comida53)
    @Dieta_Por_Edad.push_plato(@comida54)
    @Dieta_Por_Edad.push_plato(@comida55)
end

describe "NODE" do
  it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
    expect(@nodo_prueba1.Next_).to be nil
    expect(@nodo_prueba1.Prev_).not_to be nil
  
    expect(@nodo_prueba2.Next_).not_to be nil
    expect(@nodo_prueba2.Prev_).to be nil
  end
end

describe "HERENCIA" do
  it "La clase Por_Alimentos hereda de Dieta" do
    expect(@Dieta_Por_Alimentos).instance_of?(Dieta)
  end
  
  it "La clase Por_Edad hereda de Dieta" do
    expect(@Dieta_Por_Edad).instance_of?(Dieta)
  end
  
  it "La clase Por_Edad pertenece tanto a Por_Edad como a Dieta" do
    expect(@Dieta_Por_Edad).to be_a(Por_Edad)
    expect(@Dieta_Por_Edad).to be_a(Dieta)
  end
  
  it "La clase Por_Alimentos pertenece tanto a Por_Alimentos como a Dieta" do
    expect(@Dieta_Por_Alimentos).to be_a(Por_Alimentos)
    expect(@Dieta_Por_Alimentos).to be_a(Dieta)
  end
  
end

describe "LISTA" do
it "Se extrae el primer elemento de la lista" do
  expect(@lista_prueba.Size_).to eq(2)
  @test = @lista_prueba.pop_start()
  expect(@lista_prueba.Size_).to eq(1)
  expect(@test).to eq(@nodo_prueba2)
end

it "Se extrae el ultimo elemento de la lista" do
  @lista_prueba.push_start(@nodo_prueba2)
  expect(@lista_prueba.Size_).to eq(2)
  @test = @lista_prueba.pop_end()
  expect(@lista_prueba.Size_).to eq(1)
  expect(@test).to eq(@nodo_prueba1)
end

it "Se puede insertar un elemento por el HEAD" do
  expect(@Lista_doble_tony.get_size()).to eq(0)
  @Lista_doble_tony.push_start(@node_comida1)
  expect(@Lista_doble_tony.get_size()).to eq(1)
end

it "Se puede insertar un elemento por el TAIL" do
  expect(@Lista_doble_tony.get_size()).to eq(1)
  @Lista_doble_tony.push_start(@node_comida1)
  expect(@Lista_doble_tony.get_size()).to eq(2)
end

it "Se puede insertar varios elementos" do
    @Lista_doble_tony.push_start(@node_comida2)
    @Lista_doble_tony.push_start(@node_comida3)
    @Lista_doble_tony.push_start(@node_comida4)
    @Lista_doble_tony.push_start(@node_comida5)
    expect(@Lista_doble_tony.get_size()).to eq(6)
    
end

it "Debe existir una Lista con su HEAD" do
  expect(@lista_prueba.Head_).not_to be nil
end
it "Debe existir una Lista con su TAIL" do
  expect(@lista_prueba.Tail_).not_to be nil
end
end

describe "Menus COMPARABLE" do
  it "Se pueden comparar el numero de platos por dieta (1)" do
    expect(@comida5 < @comida4).to eq(false)
  end
  
  it "Se pueden comparar el numero de platos por dieta (2)" do
    expect(@comida4 < @comida5).to eq(true)
  end
end

describe "Lista ENUMERABLE" do
  it "Se puede dar la vuelta a la lista" do
    aux = @lista_prueba.reverse()
    expect(@lista_prueba.Head_).to eq(aux.Tail_)
  end
  
  it "Obtenemos el map" do
    
  end
end
end