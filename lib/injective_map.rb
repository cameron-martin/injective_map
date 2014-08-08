class InjectiveMap

  include Enumerable

  def initialize
    @forward_map = {}
    @inverse_map = {}
  end

  def add(from, to)
    raise 'Mapping is not one-to-one' if @forward_map.has_key?(from) || @inverse_map.has_key?(to)
    @forward_map[from] = to
    @inverse_map[to] = from
  end

  def each(&block)
    return enum_for(:each) unless block_given?
    @forward_map.to_a.each(&block)
  end

  def forward_image(attrs)
    @forward_map.values_at(*attrs).compact
  end

  def forward(attr)
    @forward_map[attr]
  end

  def inverse_image(attrs)
    @inverse_map.values_at(*attrs).compact
  end

  def inverse(attr)
    @inverse_map[attr]
  end

end