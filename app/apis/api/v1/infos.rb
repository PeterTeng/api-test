module API
  module V1
    class Infos < Grape::API
      resource :infos do
        get do
          present Info.all, with: Entity::V1::UsersEntity
        end
      end
    end
  end
end
