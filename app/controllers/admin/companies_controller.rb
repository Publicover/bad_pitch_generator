class Admin::CompaniesController < ApplicationController
  before_action :set_company, except: %i[index new create]

  def index
    @companies = searched_scope(Company.all, 'word', 'search_by_company_info')
    @companies = @companies.order(sort_column('email') + " " + sort_direction) if params[:column].present?
    @pagy, @companies = pagy(@companies)
  end

  def edit; end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to admin_companies_path, notice: 'Create successful'
    else
      render :new
    end
  end

  def update
    @company.update(company_params)
    redirect_to admin_companies_path, notice: 'Update successful'
  end

  def destroy
    @company.destroy
    redirect_to admin_companies_path, notice: 'Delete successful'
  end

  private

    def company_params
      params.require(:company).permit(:word)
    end

    def set_company
      @company = Company.find(params[:id])
    end

    def sortable_columns
      %w[word]
    end

    def filter_param_keys
      %i[search column direction word]
    end
end
