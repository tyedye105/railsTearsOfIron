<% enemy_robo = true %>
<% if enemy_robo === true %>
    <% if @character.do_you_have?('Sword') %>
      <h1> The enemy rust buckets pattern was predictable, with a swod in hand you sliced the thing in half!~</h1>
      <% enemy_robo = false %>
    <% end %>
  <% if @room.id === 17 && @room.first_time === true %>
    <h1> Out from the piles of junk, rusty robot with a giant hammer. Taken by surpise you walk out with several dents you didn't have before. </h1>
  <% @character.hurt %>
  <% elsif @room.id === 17   %>
  <h1>The menacing robo charges, further damaging your chasis. Only if you had a weapon.</h1>
  <% @character.hurt %>
    <% else %>
  <% end %>
<% end %>
