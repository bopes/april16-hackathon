class HealthServiceLocation #< ActiveRecord::Base
  # Remember to create a migration!
  def initialize(args)
    @uid = args.fetch(:uid)
    @oshpd_id = args.fetch(:oshpd_id)
    @facility_name = args.fetch(:facility_name)
    @facility_type = args.fetch(:facility_type)
    @services = args.fetch(:services)
    @location = args.fetch(:location)
  end
end
