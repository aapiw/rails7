class ApplicationController < ActionController::Base
  include WatermelonDbSync::ModelSyncCallback

end
