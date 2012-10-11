class DrivingLicenceCell < Cell::Rails
  def show(driving_licence)
    @driving_licence = driving_licence
    render
  end
end
