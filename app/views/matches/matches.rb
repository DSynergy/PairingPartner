<div class="flex-boxes">

    <a href="javascript:void(0)" class="flex-box flex-box-big">
      <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/placeholder_logo_2_dark.png" alt="">
      <h1 class="flex-title">Your description</h1>
    </a>
    <a href="javascript:void(0)" class="flex-box">
      <%= image_tag current_user.avatar_url %>
      <h1 class="flex-title">Your Profile Picture</h1>
    </a>
    <a href="javascript:void(0)" class="flex-box">
      <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/placeholder_logo_3_dark.png" alt="">
      <h1 class="flex-title">Your Github Accouht</h1>
      <p><%= current_user.html_url %></p>
    </a>
    <a href="javascript:void(0)" class="flex-box flex-box-big">
      <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/placeholder_logo_2_dark.png" alt="">
      <h1 class="flex-title">Your Preferred Languages</h1>
      <p><% current_user.languages.each do |language| %>
        <ul>
          <li><%= language.name %></li>
        </ul>
      <% end %>
      </p>

    </a>

    <% if current_user.followers %>

    <a href="javascript:void(0)" class="flex-box">
      <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/placeholder_logo_3_dark.png" alt="">
      <h1 class="flex-title">Your Github Followers</h1>
      <p><%= current_user.followers %></p>
    </a>

    <% end %>

    <% if current_user.following %>

    <a href="javascript:void(0)" class="flex-box flex-box-big">
      <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/placeholder_logo_2_dark.png" alt="">
      <h1 class="flex-title">The People You Follow on Github</h1>
      <p><%= current_user.following %></p>
    </a>

    <% end %>
