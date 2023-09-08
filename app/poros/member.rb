class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photoUrl

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photoUrl = data[:photoUrl]
  end
end