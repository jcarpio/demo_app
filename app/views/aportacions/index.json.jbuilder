json.array!(@aportacions) do |aportacion|
  json.extract! aportacion, :id, :name, :email, :dni_cif, :dir1, :dir2, :cp, :localidad, :provincia, :telefono, :email, :cantidad, :en_mecenas, :certificado, :comprobado
  json.url aportacion_url(aportacion, format: :json)
end
