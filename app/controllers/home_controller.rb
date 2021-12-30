class HomeController < ApplicationController

  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to lists_url, notice: 'All completed items were successfully deleted.'
  end

  def trash_em_all
    @trash_em_all = List.all.destroy_all
    redirect_to lists_url, notice: 'All items were successfully deleted.'
  end

end