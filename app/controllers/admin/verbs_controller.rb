class Admin::VerbsController < ApplicationController
  before_action :set_verb, except: %i[index new create]

  def index
    @verbs = searched_scope(Verb.all, 'word', 'search_by_verb_info')
    @verbs = @verbs.order(sort_column('email') + " " + sort_direction) if params[:column].present?
    @pagy, @verbs = pagy(@verbs)
  end

  def edit; end

  def new
    @verb = Verb.new
  end

  def create
    @verb = Verb.new(verb_params)
    if @verb.save
      redirect_to admin_verbs_path, notice: 'Create successful'
    else
      render :new
    end
  end

  def update
    @verb.update(verb_params)
    redirect_to admin_verbs_path, notice: 'Update successful'
  end

  def destroy
    @verb.destroy
    redirect_to admin_verbs_path, notice: 'Delete successful'
  end

  private

    def verb_params
      params.require(:verb).permit(:word)
    end

    def set_verb
      @verb = Verb.find(params[:id])
    end

    def sortable_columns
      %w[word]
    end

    def filter_param_keys
      %i[search column direction word]
    end
end
