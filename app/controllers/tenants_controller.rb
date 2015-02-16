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

    def show
      @tenant = Tenant.find(params[:id])
    end

    def edit
      @tenant = Tenant.find(params[:id])
    end

    def update
      @tenant = Tenant.find(params[:id])

      if @tenant.update(tenant_params)
        flash[:notice] = "Tenant was successfully updated"
        redirect_to tenants_path
      else
        render :edit
      end
    end

    def destroy
      tenant = Tenant.find(params[:id])
      tenant.destroy
      redirect_to tenants_path
    end

  private

  def tenant_params
    params.require(:tenant).permit(:name, :user, :lease_start, :lease_end)
  end


end
