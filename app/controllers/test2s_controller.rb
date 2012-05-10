class Test2sController < ApplicationController
  # GET /test2s
  # GET /test2s.json
  def index
    @test2s = Test2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test2s }
    end
  end

  # GET /test2s/1
  # GET /test2s/1.json
  def show
    @test2 = Test2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test2 }
    end
  end

  # GET /test2s/new
  # GET /test2s/new.json
  def new
    @test2 = Test2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test2 }
    end
  end

  # GET /test2s/1/edit
  def edit
    @test2 = Test2.find(params[:id])
  end

  # POST /test2s
  # POST /test2s.json
  def create
    @test2 = Test2.new(params[:test2])

    respond_to do |format|
      if @test2.save
        format.html { redirect_to @test2, notice: 'Test2 was successfully created.' }
        format.json { render json: @test2, status: :created, location: @test2 }
      else
        format.html { render action: "new" }
        format.json { render json: @test2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test2s/1
  # PUT /test2s/1.json
  def update
    @test2 = Test2.find(params[:id])

    respond_to do |format|
      if @test2.update_attributes(params[:test2])
        format.html { redirect_to @test2, notice: 'Test2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @test2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test2s/1
  # DELETE /test2s/1.json
  def destroy
    @test2 = Test2.find(params[:id])
    @test2.destroy

    respond_to do |format|
      format.html { redirect_to test2s_url }
      format.json { head :ok }
    end
  end
end
