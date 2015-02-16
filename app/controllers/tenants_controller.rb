class TenantsController < ApplicationController

  def index
    @tenants = Tenant.all
  end

  def new
    @tenant = Tenant.new
  end

  def create
        @tenant = Tenant.new(tenant_params)
    if @tenant.save
      flash[:notice] = "Tenant was successfully created"
      redirect_to tenants_path(@tenant)
    else
      render :new
    end
  end


  private

  def tenant_params
    params.require(:tenant).permit(:name, :user, :lease_start, :lease_end)
  end


end
