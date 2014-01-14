# == Schema Information
#
# Table name: aportacions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  email       :string(255)
#  dni_cif     :string(255)
#  dir1        :string(255)
#  dir2        :string(255)
#  cp          :string(255)
#  localidad   :string(255)
#  provincia   :string(255)
#  telefono    :string(255)
#  cantidad    :string(255)
#  en_mecenas  :boolean
#  certificado :boolean
#  comprobado  :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Aportacion < ActiveRecord::Base
end
