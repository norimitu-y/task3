module SpeaksHelper
 def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_speaks_path
    elsif action_name == 'edit'
      speak_path
    end
  end  
end
