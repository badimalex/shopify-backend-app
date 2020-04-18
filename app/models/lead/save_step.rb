class Lead::SaveStep
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def save_step
    params[:step] == 1 ? Lead.create!(lead_params) : exist_lead&.update!(lead_params)
  end

  def exist_lead
    @exist_lead ||= ::Lead.find_by(email: params[:email])
  end

  def lead_params
    @lead_params ||= params.except(:step)
  end
end
