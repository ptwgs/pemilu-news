module News
  class API < Grape::API
    prefix 'api'

    resource :links do
      get do
        Link.all
      end
    end
  end
end
