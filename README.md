# sample_app (AWS+Heroku, #3)

#     Models: 

1. **Users**

     - id    [integer]

     - name  [string]

     - email [string]
     
     - password_digest [string]
     
     - remember_digest [string]
     
     - admin [boolean] //*rails generate migration add_admin_to_users admin:boolean; rails db:migrate
     
     - activation_digest [string]
     
     - activated [boolean]
     
     - activated_at [datetime]
     
     - reset_digest [string]
     
     - reset_sent_at [datetime]

2. **Microposts**

     - id    [integer]

     - content  [text]

     - user_id [integer]
     
     - created_at [datetime]
     
     - updated_at [datetime]
     
     - picture [string]
     
3. **Relationships**

     - id    [integer]

     - folower_id [integer]
     
     - folowed_id [integer]
     
     - created_at [datetime]
     
     - updated_at [datetime]