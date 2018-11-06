module Armg::AbstractMysqlAdapterExt
  def initialize_type_map(m = type_map)
    super
    m.register_type %r(^geometry)i, Armg::MysqlGeometry.new
  end
end
