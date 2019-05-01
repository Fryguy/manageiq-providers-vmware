module ManageIQ::Providers::Vmware::Inventory::Persister::Definitions::InfraCollections
  extend ActiveSupport::Concern

  def initialize_infra_inventory_collections
    add_collection(infra, :customization_specs)
    add_collection(infra, :disks, :parent_inventory_collections => %i[vms_and_templates])
    add_collection(infra, :distributed_virtual_switches)
    add_collection(infra, :ems_clusters)
    add_collection(infra, :ems_custom_attributes, :parent_inventory_collections => %i[vms_and_templates])
    add_collection(infra, :ems_folders)
    add_collection(infra, :ext_management_system)
    add_collection(infra, :guest_devices, :parent_inventory_collections => %i[vms_and_templates])
    add_collection(infra, :hardwares, :parent_inventory_collections => %i[vms_and_templates])
    add_collection(infra, :hosts)
    add_collection(infra, :host_hardwares)
    add_collection(infra, :host_guest_devices)
    add_collection(infra, :host_networks)
    add_collection(infra, :host_storages)
    add_collection(infra, :host_switches)
    add_collection(infra, :host_system_services)
    add_collection(infra, :host_operating_systems)
    add_collection(infra, :host_virtual_switches)
    add_collection(infra, :lans)
    add_collection(infra, :miq_scsi_luns)
    add_collection(infra, :miq_scsi_targets)
    add_collection(infra, :networks, :parent_inventory_collections => %i[vms_and_templates])
    add_collection(infra, :operating_systems, :parent_inventory_collections => %i[vms_and_templates])
    add_collection(infra, :resource_pools)
    add_collection(infra, :snapshots, :parent_inventory_collections => %i[vms_and_templates])
    add_collection(infra, :storages)
    add_collection(infra, :storage_profiles)
    add_collection(infra, :parent_blue_folders)
    add_collection(infra, :vms_and_templates) { |b| b.vm_template_shared }
    add_collection(infra, :vm_parent_blue_folders)
    add_collection(infra, :vm_resource_pools)
    add_collection(infra, :root_folder_relationship)
  end
end
