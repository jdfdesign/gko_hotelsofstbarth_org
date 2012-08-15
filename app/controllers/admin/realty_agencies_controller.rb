class Admin::RealtyAgenciesController < Admin::MembersController
  nested_belongs_to :site, :realty_agency_list
end