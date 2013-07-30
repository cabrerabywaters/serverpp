# encoding: utf-8

# Public: Controlador encargado manejar el CRUD de ECO's grandes.
#
class PuntosPoint::BigEcosController < PuntosPoint::PuntosPointApplicationController
  authorize_resource :eco

  # GET /puntos_point/big_ecos
  def index
    @ecos = Eco.big

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /puntos_point/big_ecos/1
  def show
    @eco = Eco.big.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /puntos_point/big_ecos/new
  def new
    @eco = Eco.new
    @eco.bigger = true

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /puntos_point/big_ecos/1/edit
  def edit
    @eco = Eco.big.find(params[:id])
  end

  # POST /puntos_point/big_ecos
  def create
    @eco = Eco.new(params[:eco], as: :puntos_point)
    @eco.bigger = true

    respond_to do |format|
      if @eco.save
        format.html { redirect_to puntos_point_big_ecos_path, notice: t('notices.success.female.create', model: Eco.model_name.human) }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /puntos_point/big_ecos/1
  def update
    @eco = Eco.big.find(params[:id])

    respond_to do |format|
      if @eco.update_attributes(params[:eco], as: :puntos_point)
        format.html { redirect_to puntos_point_big_ecos_path, notice: t('notices.success.female.update', model: Eco.model_name.human) }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /puntos_point/big_ecos/1
  def destroy
    @eco = Eco.big.find(params[:id])

    @eco.destroy

    respond_to do |format|
      format.html { redirect_to puntos_point_big_ecos_url }
    end
  end
end
