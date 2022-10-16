class Admin::OrganizationsController < ApplicationController
  before_action :set_organization, except: %i[index new create]

  def index
    @organizations = searched_scope(Organization.all, 'word', 'search_by_org_info')
    @organizations = @organizations.order(sort_column('email') + " " + sort_direction) if params[:column].present?
    @pagy, @organizations = pagy(@organizations)
  end

  def edit; end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to admin_organizations_path, notice: 'Create successful'
    else
      render :new
    end
  end

  def update
    @organization.update(organization_params)
    redirect_to admin_organizations_path, notice: 'Update successful'
  end

  def destroy
    @organization.destroy
    redirect_to admin_organizations_path, notice: 'Delete successful'
  end

  private

    def organization_params
      params.require(:organization).permit(:word)
    end

    def set_organization
      @organization = Organization.find(params[:id])
    end

    def sortable_columns
      %w[word]
    end

    def filter_param_keys
      %i[search column direction word]
    end
end
