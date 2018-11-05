module Armg::AbstractMysqlAdapterExt
  def initialize_type_map(m)
    super
    m.register_type %r(^geometry)i, Armg::MysqlGeometry.new
  end

  def indexes(*args, &block)
    is = super

    is.each do |i|
      if i.type == :spatial
        
      end
    end

    is
  end
end
