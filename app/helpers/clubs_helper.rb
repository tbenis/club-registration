module ClubsHelper
  def show_index_title_conditionally
    if @user
      content_tag(:h1, "Here are all of #{@user.name}'s clubs:")
    else
      content_tag(:h1, "Here are all existing clubs:", class: "club_index_header")
    end
  end
end
