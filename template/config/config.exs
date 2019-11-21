import Config

config :<%= @project_name %>,
  port: 4001

<%= if @test do %>import_config "#{Mix.env()}.exs"<% end %>
