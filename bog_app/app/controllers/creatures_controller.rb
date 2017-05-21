class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.new(creature_params)

    if creature.save
      redirect_to creature_path(creature) #path helper for /creatures
      #how does creature_path(creature) pull the :id from (creature)??
    end
  end

  def show
    creature_id = params[:id]
    # @creature = Creature.find_by_id(creature_id)
    @creature = Creature.find creature_id
  end

  def edit
    creature_id = params[:id]
    @creature = Creature.find creature_id
  end

  def update
    creature_id = params[:id]
    creature = Creature.find creature_id # why are these necessary if edit has them?
    creature.update_attributes(creature_params)
    redirect_to creature_path(creature)
    # equivalent to "/creatures/#{creature.id}" - is this bc of line 33?
  end

  def destroy
    creature_id = params[:id]
    creature = Creature.find creature_id
    creature.destroy
    redirect_to creatures_path
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end



end


#why does update not use @creature but edit does?
