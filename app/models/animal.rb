class Animal < ApplicationRecord
    validates_presence_of :age, :color, :weight, :species
    has_many :pets

    # filtra los animales por especie y retorna sólo perros (‘dog’)
    scope :dogs_only, -> {where(species: "dog")}

    # filtra los animales por especie y retorna sólo gatos (‘cat’)
    scope :cats_only, -> {where(species: "cat")}

    def animal_names
        self.pets.map(&:name).join(",")
    end

end
