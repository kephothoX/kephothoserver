class SlugsController < InheritedResources::Base

  before_action :redirect, only: [:destroy, :create, :new, :edit]
  before_action :set_slug, only: [:show, :update]


 def set_slug
   @slug = Slug.find(params[:id])
  end


  def redirect
    redirect_to slugs_home_path
  end

  # GET /slugs
  # GET /slugs.json
  def index
    @slugs = Slug.all
  end

  def home
    @slug = Slug.order(Starts: :desc).limit(8)
  end

  def electronics
    @slug = Slug.where(:Category => 'electronics').order(Starts: :desc).all
  end

  def travel
    @slug = Slug.where(:Category => 'travel').order(Starts: :desc).all
  end

  def accomodation
    @slug = Slug.where(:Category => 'accomodation').order(Starts: :desc).all
  end


  def entertainment
    @slug = Slug.where(:Category => 'entertainment').order(Starts: :desc).all
  end

  def beauty
    @slug = Slug.where(:Category => 'beauty').order(Starts: :desc).all
  end

  def restaurant
    @slug = Slug.where(:Category => 'restaurant').order(Starts: :desc).all
  end

  def hardware
    @slug = Slug.where(:Category => 'hardware').order(Starts: :desc).all
  end

  def clothing
    @slug = Slug.where(:Category => 'clothing').order(Starts: :desc).all
  end


  private

    def slug_params
      params.require(:slug).permit(:Company, :Logo, :Duration, :Category, :Image, :Title, :Details, :Starts, :Expires, :Website, :Views, :Rating)
    end



end
