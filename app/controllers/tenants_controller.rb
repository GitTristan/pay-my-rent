class TenantsController < ApplicationController

  def index
    @tenants = Tenant.all
  end

  def new
    @tenant = Tenant.new
  end

end
