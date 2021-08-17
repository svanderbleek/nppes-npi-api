require 'nppes_api'
require 'nppes_data_adapter'

class RecordsController < ApplicationController
  def index
    @records = Record.all.order(updated_at: :desc)
  end

  def create
    @record = Record.find_by(number: params[:number])

    if @record
      @record.touch
    else
      data = NppesApi.query(params[:number])
      @record = NppesDataAdapter.record_from(data)
    end
  end
end
