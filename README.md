<% if @room.doors.any? %>
  <% @room.doors.each do |door| %>
    <% if @character.do_you_have?("A key") === true %>
      <%= link_to edit_door_path(door) do %>
        <%= image_tag "door.png"  %>
      <% end %>
    <% else %>
      <%= link_to, door_path( door) do %>
        <%= image_tag "door.png"  %>
      <% end %>
    <% end %>
  <% end %>
<% end %>
