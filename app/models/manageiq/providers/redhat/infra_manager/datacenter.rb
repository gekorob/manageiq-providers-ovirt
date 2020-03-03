class ManageIQ::Providers::Redhat::InfraManager::Datacenter < ManageIQ::Providers::InfraManager::Datacenter
  has_many :external_distributed_virtual_switches, :dependent => :destroy, :inverse_of => :datacenter
  has_many :external_distributed_virtual_lans, -> { distinct }, :through => :external_distributed_virtual_switches, :source => :lans
end
