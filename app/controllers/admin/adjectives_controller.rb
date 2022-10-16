class Admin::AdjectivesController < ApplicationController
  before_action :set_adjective, except: %i[index new create]

  def index
    @adjectives = searched_scope(Adjective.all, 'word', 'search_by_adjective_info')
    @adjectives = @adjectives.order(sort_column('email') + " " + sort_direction) if params[:column].present?
    @pagy, @adjectives = pagy(@adjectives)
  end

  def edit; end

  def new
    @adjective = Adjective.new
  end

  def create
    @adjective = Adjective.new(adjective_params)
    if @adjective.save
      redirect_to admin_adjectives_path, notice: 'Create successful'
    else
      render :new
    end
  end

  def update
    @adjective.update(adjective_params)
    redirect_to admin_adjectives_path, notice: 'Update successful'
  end

  def destroy
    @adjective.destroy
    redirect_to admin_adjectives_path, notice: 'Delete successful'
  end

  private

    def adjective_params
      params.require(:adjective).permit(:word)
    end

    def set_adjective
      @adjective = Adjective.find(params[:id])
    end

    def sortable_columns
      %w[word]
    end

    def filter_param_keys
      %i[search column direction word]
    end
end
