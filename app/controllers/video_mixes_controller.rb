class VideoMixesController < ApplicationController
  before_action :set_video_mix, only: [:show, :edit, :update]

  def index
    @video_mixes = VideoMix.all
  end

  def show
  end

  def new
    @video_mix = VideoMix.new
    @tags = Tag.all.group_by(&:type)
  end

  def edit
    @tags = Tag.all.group_by(&:type)
  end

  def create
    @video_mix = VideoMix.new(video_mix_params)
    @video_mix.save
    redirect_to video_mixes_path
  end

  def update
    @video_mix.update(video_mix_params)
    redirect_to video_mixes_path
  end

  private

    def set_video_mix
      @video_mix = VideoMix.find(params[:id])
    end

    def video_mix_params
      params.require(:video_mix).permit(:name, tag_ids: [])
    end

end
