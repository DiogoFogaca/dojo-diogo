Dado("que esteja logado no site orangehrm") do
  visit 'http://opensource.demo.orangehrmlive.com'
  fill_in 'txtUsername', :with => 'Admin'
  fill_in 'txtPassword', :with => 'admin'
  click_button('btnLogin')
end

Quando("Cadastrar um novo usuario") do
  click_link 'menu_pim_viewPimModule'
  click_link 'menu_pim_addEmployee'
  fill_in 'firstName', :with => 'Teste Diogo '
  fill_in 'lastName', :with => 'cadastro'
  click_button('btnSave')
end

Entao("Devera retornar um titulo Personal Details") do
  assert_text('Personal Details')
end

Dado("que esteja logado no site orangehrm para alterar") do
  visit 'http://opensource.demo.orangehrmlive.com'
  fill_in 'txtUsername', :with => 'Admin'
  fill_in 'txtPassword', :with => 'admin'
  click_button('btnLogin')
end

Dado("exista um empregado cadastrado") do
  click_link 'menu_pim_viewPimModule'
  click_link 'menu_pim_viewEmployeeList'
  click_link('Linda')
end

Quando("Alterar dados do cadastro") do
  click_button('btnSave')
  fill_in 'personal_txtEmpFirstName', :with => 'Linda ALTERADO'
  fill_in 'personal_txtEmpLastName', :with => 'Anderson ALTERADO'
  click_button('btnSave')
end

Entao("Devera salvar alteracoes") do
  assert_text('Linda ALTERADO')
  assert_text('Anderson ALTERADO')
end