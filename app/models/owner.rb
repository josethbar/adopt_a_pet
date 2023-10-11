class Owner < ApplicationRecord
    has_many :pets
    validates_presence_of :name , :age, :email
    validates_uniqueness_of :email
    validates_format_of :email ,with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    # retorna el número de mascotas que ha adoptado la persona hasta
    # el momento
    def pets_adopted_count
        self.pet.count
    end


    # retorna un string con el nombre de las mascotas separados por coma
    def pets_names
        self.pets.map(&:name).join(",")
    end

end
