class Brand

  attr_reader :id
  attr_accessor :name, :info

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @info = options['info']
  end

end
