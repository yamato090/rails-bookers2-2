{"filter":false,"title":"homes_controller.rb","tooltip":"/bookers2-debug/app/controllers/homes_controller.rb","undoManager":{"mark":-1,"position":-1,"stack":[[{"start":{"row":19,"column":9},"end":{"row":31,"column":9},"action":"insert","lines":["<%= form_with model:book, local: true do |f| %>","  <div class=\"form-group\">","    <h4>Title</h4>","    <%= f.text_field :title, class: 'form-control book_title' %>","  </div>","  <div class=\"form-group\">","    <h4>Opinion</h4>","    <%= f.text_area :body, class: 'form-control book_body' %>","  </div>","  <div class=\"form-group\">","    <%= f.submit 'Create Book', class: 'btn btn-success' %>","  </div>","<% end %>"],"id":2}],[{"start":{"row":7,"column":0},"end":{"row":19,"column":9},"action":"insert","lines":["<%= form_with model:book, local: true do |f| %>","  <div class=\"form-group\">","    <%= f.label :title %>","    <%= f.text_field :title, class: 'form-control book_title' %>","  </div>","  <div class=\"form-group\">","    <%= f.label :opinion %>","    <%= f.text_area :body, class: 'form-control book_body' %>","  </div>","  <%= f.text_field :body %>","    <%= f.submit 'Update Book'class: 'btn btn-success' %>","  </div>","<% end %>"],"id":1}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":0},"end":{"row":7,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1635844850638,"hash":"1740bb70256fc304eae8bf26458ae62f510b2b89"}