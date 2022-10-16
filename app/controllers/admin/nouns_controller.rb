class Admin::NounsController < ApplicationController
  before_action :set_noun, except: %i[index new create]

  def index
    @nouns = searched_scope(Noun.all, 'word', 'search_by_noun_info')
    @nouns = @nouns.order(sort_column('email') + " " + sort_direction) if params[:column].present?
    @pagy, @nouns = pagy(@nouns)
  end

  def edit; end

  def new
    @noun = Noun.new
  end

  def create
    @noun = Noun.new(noun_params)
    if @noun.save
      redirect_to admin_nouns_path, notice: 'Create successful'
    else
      render :new
    end
  end

  def update
    @noun.update(noun_params)
    redirect_to admin_nouns_path, notice: 'Update successful'
  end

  def destroy
    @noun.destroy
    redirect_to admin_nouns_path, notice: 'Delete successful'
  end

  private

    def noun_params
      params.require(:noun).permit(:word)
    end

    def set_noun
      @noun = Noun.find(params[:id])
    end

    def sortable_columns
      %w[word]
    end

    def filter_param_keys
      %i[search column direction word]
    end
end
