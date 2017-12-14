class SearchController < ApplicationController
    
    def index
    @q = params['pressing'] && params['pressing']['q']
    return if @q.blank?

    @hits = Pressing.search(@q, { hitsPerPage: 50, page: (params['page'] || 1) })
  end
end
