actions :create

def initialize(*args)
  super
  @action = :create
end

attribute :name, :kind_of => String, :name_attribute => true
attribute :cn,   :kind_of => String
attribute :ca,   :kind_of => String, :required => true
attribute :type, :kind_of => String, :default => 'server', :equal_to => ['server', 'client', 'peer', 'custom']
attribute :bits, :kind_of => Fixnum, :default => 2048, :equal_to => [1024, 2048, 4096, 8192]
attribute :days, :kind_of => Fixnum, :default => (365 * 5)
attribute :digest, :kind_of => String, :default => 'SHA256', :equal_to => ['SHA', 'SHA1', 'SHA224', 'SHA256', 'SHA384', 'SHA512', 'MD5']
attribute :subject_alt_name, :kind_of => Array, :default => Array.new
attribute :extensions, :kind_of => Array, :default => Array.new

attribute :owner, :kind_of => String, :default => 'root'
attribute :group, :kind_of => String, :default => 'root'

attribute :cacertificate, :kind_of => String
attribute :certificate,   :kind_of => String, :required => true
attribute :key,           :kind_of => String, :required => true

attribute :joincachain,   :equal_to => [true, false], :default => false
