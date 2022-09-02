class MyServicesController < ApplicationController
    def index
        @my_services = MyService.all
    end
end
