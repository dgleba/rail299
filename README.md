
## Example app showing issue..  
	
- checkboxes will not re-check upon edit. 
 - Start app. 
 - visit localhost:3000/products. 
 - hit edit. 
 - checkboxes are not checked to match what is in the database.  



#### More:

- check boxes do save to database.  
- I cannot get them to show as checked based on database entries.
- This is a simple app with little more than simple_form installed just to test the checkboxes from local list.


#### Scaffold:

``` 
rails g scaffold Product name feature  
```

_____________

### products view _form:

```
<%= simple_form_for(@product) do |f| %>
  <%= f.error_notification %>

  <div class="form-inputs">
    <%= f.input :name %>
   <%= f.input :feature, as: :check_boxes, 
        collection:  ["ac", "StereoRadio", "4wheeldrive"], :checked => @product.feature %>

    <%= puts @product.feature %>
    <%= puts f.object.feature %>
        
  </div>

  <div class="form-actions">
    <%= f.button :submit %>
  </div>
<% end %>
```

---

Prints to console from the puts statement I added above....  
    ["StereoRadio", ""]

will not check the boxes after pressing edit...

    <%= f.input :feature, as: :check_boxes, 
        collection:  ["ac", "StereoRadio", "4wheeldrive"], :checked => @product.feature %>

        
this will check the StereoRadio box...

    <%= f.input :feature, as: :check_boxes, 
        collection:  ["ac", "StereoRadio", "4wheeldrive"], :checked => ["StereoRadio", ""] %>

        

ref.. 

- [one](http://stackoverflow.com/questions/13823655/rails-multiple-checkboxes-in-1-db-column-saves-correctly-but-doesnt-show-as-ch)
- [two](http://stackoverflow.com/questions/5500923/how-to-preselect-an-association-checkbox-using-simple-form?rq=1)

---
  
- vsimple_form checkboxes save to database column as array but will not retrieve from database and re-check boxes on edit

- simple_form pre-check check_boxes from database on edit


- no works...   
     f.input :my_boolean, input_html: { checked: @object.my_boolean }



_____________


David Gleba
dgleba@gmail.com
