class ChannelsController < ApplicationController
  before_action :set_channel, only: [:show, :edit, :update]

  def index
    @channels = Channel.all
  end

  def show
  end

  def new
    @channel = Channel.new
    @tags = Tag.all.group_by(&:type)
  end

  def edit
    @tags = Tag.all.group_by(&:type)
  end

  def create
    @channel = Channel.new(channel_params)
    @channel.save
    redirect_to channels_path
  end

  def update
    @channel.update(channel_params)
    redirect_to channels_path
  end

  private

    def set_channel
      @channel = Channel.find(params[:id])
    end

    def channel_params
      params.require(:channel).permit(:name, tag_ids: [])
    end

end
