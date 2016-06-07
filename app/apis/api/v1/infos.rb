module API
  module V1
    class Infos < Grape::API
      resource :infos do
        get do
          present Info.all, with: Entity::V1::InfosEntity
        end
      end
    end
  end
end
