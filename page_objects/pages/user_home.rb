module Pages
  class UserHome < SitePrism::Page
    #elements
    element :dashboard, 'div #dashboard'
    element :button_new_repository, '.btn.btn-sm.btn-primary'

  end
end
