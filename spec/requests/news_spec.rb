require "spec_helper"

describe News::API do
  describe "GET /api/links" do
    it "returns array of links" do
      link = FactoryGirl.create(:link)

      get "/api/links"

      expect(response.status).to eq(200)
      expect(response.body).to eq("[#{link.to_json}]")
    end
  end

  describe "GET /api/foo" do
    it "returns error 500" do
      get "/api/foo"

      expect(response.status).to eq(500)
    end
  end

  describe "POST /api/links" do
    it "returns the newly created link" do
      link = { title: "Hello world", url: "http://example.com/" }

      post "/api/links", link

      expect(response.status).to eq(201)

      json = JSON.parse(response.body)
      expect(json["title"]).to eq(link[:title])
      expect(json["url"]).to eq(link[:url])
    end
  end
end