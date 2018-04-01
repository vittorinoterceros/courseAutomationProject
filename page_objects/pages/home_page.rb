    module Pages
      class HomePage < SitePrism::Page
        set_url '/'

        element :main_page_container, '.application-main'
        element :login_page_link, '[href=\'/login\']'
        element :user_profile_icon, '.avatar.float-left.mr-1'

        def Login()
          login_page_link.click
        end

      end
    end
