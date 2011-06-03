class PineappleStepsController < ApplicationController
  # GET /pineapple_steps
  # GET /pineapple_steps.xml
  def index
    @pineapple_steps = PineappleStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pineapple_steps }
      format.json{
        render :json => @pineapple_steps.to_json
      }
    end
  end

  # GET /pineapple_steps/1
  # GET /pineapple_steps/1.xml
  def show
    @pineapple_step = PineappleStep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pineapple_step }
      format.json{
        render :json => @pineapple_step.to_json
      }
    end
  end

  # GET /pineapple_steps/new
  # GET /pineapple_steps/new.xml
  def new
    @pineapple_step = PineappleStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pineapple_step }
      
    end
  end

  # GET /pineapple_steps/1/edit
  def edit
    @pineapple_step = PineappleStep.find(params[:id])
  end

  # POST /pineapple_steps
  # POST /pineapple_steps.xml
  def create
    @pineapple_step = PineappleStep.new(params[:pineapple_step])

    respond_to do |format|
      if @pineapple_step.save
        format.html { redirect_to(@pineapple_step, :notice => 'Pineapple step was successfully created.') }
        format.xml  { render :xml => @pineapple_step, :status => :created, :location => @pineapple_step }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pineapple_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pineapple_steps/1
  # PUT /pineapple_steps/1.xml
  def update
    @pineapple_step = PineappleStep.find(params[:id])

    respond_to do |format|
      if @pineapple_step.update_attributes(params[:pineapple_step])
        format.html { redirect_to(@pineapple_step, :notice => 'Pineapple step was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pineapple_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pineapple_steps/1
  # DELETE /pineapple_steps/1.xml
  def destroy
    @pineapple_step = PineappleStep.find(params[:id])
    @pineapple_step.destroy

    respond_to do |format|
      format.html { redirect_to(pineapple_steps_url) }
      format.xml  { head :ok }
    end
  end
end
