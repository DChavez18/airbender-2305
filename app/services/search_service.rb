class SearchService
  def conn
    Faraday.new(url: "https://last-airbender-api.fly.dev/")
  end

  def members_by_nation(nation)
    response = conn.get("api/v1/characters?affiliation=Fire+Nation")
    JSON.parse(response.body, symbolize_names: true)
  end
end