### **A Template for _CRUD_**

This is a basic template for a CRUD Web app. It shoes the flow between the routes and the erb files

### The Routes

This setion lists the requests (routes) and responses.

  1. get '/' -              This is the original route
                            Cooking info in the route to pass to ERB :index is optional I guess
                            Response is the ERB :index
  2. get '/login' -         This is the login route when clicking the login button
                            No cooking of data to pass to ERB :login
                            Responing with the login html.
  3. post '/session' -      This is the route to create a session when the login button is clicked on the login html.
                            Params passed to session (params[:email]) are passed in the URL
                            Response is either to a redirect to the main page '/things' or back to the login page
  4. delete '/session'      This is the route to delete a session
                            The response is a rediret to the login html

  #### READ
  5. get '/things' -        This is the route for the main screen
                            Response is the main html page
  6. get '/things/1' -      This is the route to read a thing
                            The response is show html

  #### NEW / CREATE
  7. get '/things/new' -    This is the route to enter a new thing.
                            The response is the new html page to fill in the details   
  8. post '/things' -       This is the route when you want to add alll the details of a new thing.
                            The response is a safe place such as 'things'
  #### UPDATE
  9. get 'things/1/edit' -  This is the route to edit a thing. (1 is some sort of id).  
                            The response is the edit page html
  10. put '/thing/1' -      This is the route to add the updates
                            The response is a redirect to the main page

  #### DELETE
  11. delete '/things/1' -  This is the route to delete a thing
                            The response is a redirect to a safe place such as '/things'

## The HTML and PARAMS

  - Info passed rom HTML to Routes  via Forms, Links or URL
  - In routes data accessed via params[:name]
  - Data cooked in the routes and referenced with @ which can be used in ERB
  - When working with a specific item then the id or what ever must be part of the route set up in the erb such as '/things/id' when wanting to view a thing

  - For delete.erb use   <input type="hidden" name="_method" value="delete"> together with "post"
  - For edit.erb use <input type="hidden" name="_method" value="put"> together with "post"
