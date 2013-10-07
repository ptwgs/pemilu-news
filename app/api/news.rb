module News
  class API < Grape::API
    prefix 'api'
    format :json

    resource :links do
      get do
        Link.all
      end

      params do
        requires :title
        requires :url
      end
      post do
        Link.create!({
          title: params[:title],
          url: params[:url]
        })
      end
    end
  end
end
