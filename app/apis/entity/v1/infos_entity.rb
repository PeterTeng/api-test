module Entity
  module V1
    class InfosEntity < Grape::Entity
      expose :id, :name, :category, :address
    end
  end
end
