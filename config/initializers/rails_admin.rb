RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
	if current_user  and current_user.is_admin?
	  true
	else
	  redirect_to root_path, notice: "Not authorized to see this page"
	end
	# warden.authenticate! scope: :is_admin?
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
	dashboard                     # mandatory
	index                         # mandatory
	new
	export
	bulk_delete
	show
	edit
	delete
	show_in_app

	## With an audit adapter, you can add:
	# history_index
	# history_show
  end
end
