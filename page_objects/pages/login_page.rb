
    module Pages
      class LoginPage < SitePrism::Page

        set_url 'login'

        #Authentication form
        element :login, "#login_field"
        element :password, "#password"
        element :login_btn, "[value='Sign in']"

        #error message
        element :error_msg, "#js-flash-container .container"
        element :error_close_icon, ".flash-close.js-flash-close"

        def doLogin (name,pwd)
          login.set name
          password.set pwd
          login_btn.click
          sleep 2
        end

      end
    end
