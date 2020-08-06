class HomeController < ApplicationController

    def delete_completed
        @delete_completed = List.where(:completed => true).destroy_all
        redirect_to root_url, notice: 'All completed tasks were successfully deleted.'
    end

    def delete_all
        @delete_all = List.all.destroy_all
        redirect_to root_url, notice: 'All tasks were successfully deleted.'
    end

end