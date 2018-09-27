class User


  def self.fetch_data(username)
    client = Octokit::Client.new(login: "sammarcus", access_token: ENV["GITHUB_PROFILE_DATA_TOKEN"])
    response = client.user(username)
    response = response.to_h
  end

  def self.sort_values(response)
    chunk = {
      :login  => response[:login],
      :avatar_url  => response[:avatar_url],
      :html_url  => response[:html_url],
      :name  => response[:name],
      :company  => response[:company],
      :blog  => response[:blog],
      :location  => response[:location],
      :hireable  => response[:hireable],
      :bio  => response[:bio],
      :public_repos  => response[:public_repos],
      :followers  => response[:followers],
      :following  => response[:following],
      :created_at  => response[:created_at],
      :updated_at  => response[:updated_at]
    }
  end

  def self.runner(username)
    response = fetch_data(username)
    output = sort_values(response)
  end
end

