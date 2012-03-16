# config/routes.rb
Proj2a::Application.routes.draw do
  get "students/index"
  match "students/createStudent" => "students#createStudent"
  match "students/selectStudent" => "students#selectStudent"
  match "students/deleteStudent" => "students#deleteStudent"
  match "students/editStudent" => "students#editStudent"
  match "admins/login" => "admins#login"
  match "admins/logtest" => "admins#logtest"
end
