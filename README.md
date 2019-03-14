# sample_app (AWS+Heroku, #3)

#     Models: 

1. **Users**

     - id    [integer]

     - name  [string]

     - email [string]
     
     - password_digest [string]
     
     - remember_digest [string]
     
     - admin [boolean] //*rails generate migration add_admin_to_users admin:boolean; rails db:migrate