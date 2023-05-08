# frozen_string_literal: true

# module Admin
#   class HomeController < ApplicationController
#     before_action :authenticate_admin!

#     def index
#       @blogs = Blog.all
#     end
#   end
# end

module AdminArea
  class HomeController < ApplicationController
    before_action :authenticate_admin!

    def index
      @blogs = Blog.all
    end
  end
end
