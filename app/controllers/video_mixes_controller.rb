class VideoMixesController < ApplicationController
  before_action :set_video_mix, only: [:show, :edit, :update]

  def index
    @video_mixes = VideoMix.all
  end

  def show
    #you wrote set_video in the before_action kevin
  end

  def new
    @video_mix = VideoMix.new
    # @genres = Genre.all
    @tags = Tag.all.group_by(&:type)
    # Tag.all.group_by { |tag| tag.type } #long form
    # binding.pry
  end

  def edit
    @tags = Tag.all.group_by(&:type)
    #you wrote set_video in the before_action kevin
    # @genres = Genre.all
  end

  def create
    # {"title": "Red Velvet mix", "genre_ids": ["2", "4"]}
    # genre_ids: originally written as custom overwriting method
    # only to realize that @video.genre_ids is an awesome ActiveRecord Method
    # binding.pry
    # binding.pry
    @video_mix = VideoMix.new(video_mix_params)
    @video_mix.save
    redirect_to @video_mix
  end

  def update
    #you wrote set_video in the before_action kevin
    @video_mix.update(video_mix_params)
    redirect_to @video_mix
  end

  private

    def set_video_mix
      # binding.pry
      @video_mix = VideoMix.find(params[:id])
    end

    def video_mix_params
      # binding.pry
      params.require(:video_mix).permit(:name, tag_ids: [])
    end

end
