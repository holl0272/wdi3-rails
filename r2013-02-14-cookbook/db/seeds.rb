Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Roccos Five Minute Flavor', :cuisine => 'American', :chef => 'Rocco DiSpirito', :image => 'http://www.ecookbooks.com/images/PRODUCT/medium/08145.jpg')

r1 = Recipe.create(:name => 'salad', :course => 'first', :cooktime => '10', :servingsize => '4', :instructions => 'toss the ingredients together in a big bowl and serve', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTCHhxFVFDGsBzQHcOuoUn1rLuTzgFdedQqGQPqcq2aARSoFz1hVA', :book_id => '')
r2 = Recipe.create(:name => 'meatloaf', :course => 'main', :cooktime => '60', :servingsize => '6', :instructions => 'mash all the meat and ingredients toegther into a loaf and stick it in the oven', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQw6BMojOD8eTKaeUHnydqbdmARmu_nwZqqLZ-Pipn8e3nVm49AuA', :book_id => '')
r3 = Recipe.create(:name => 'cookies', :course => 'dessert', :cooktime => '45', :servingsize => '12', :instructions => 'mix all the ingredients together and roll 12 cookie balls and place them on a cookie sheet to bake', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTzodEPuVaDMaqbClXP7bc5oUl7hx851mASIAgz-KA1kJIG5Nvt', :book_id => '')

i1 = Ingredient.create(:name => 'flour', :measurment => '2 cups', :cost => '4.25', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSwjcLSwyRLXzwI_IWLvR2mW57HSSfLsSqx5AHidMpTfixRh5a6')
i2 = Ingredient.create(:name => 'sugar', :measurment => '1 cup', :cost => '5.50', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQgNmm_vp4C0_s3zz273m5neUKU09FeUL761SCYd73xN39tvtTA')
i3 = Ingredient.create(:name => 'milk', :measurment => '0.5 cups', :cost => '4.75', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQOltG72rKVc9FdphcZ0Iqz1ufIMAUFot1JTKtTtKg8V5oz919erA')
i4 = Ingredient.create(:name => 'vanilla', :measurment => '3 Tbls', :cost => '3.00', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSdRtzEIGNbA6IwA9v7NymvCQQm0OQGq4QUP7d4BRJ7go4oB52tcQ')
i5 = Ingredient.create(:name => 'pepper', :measurment => '1 tsp', :cost => '2.25', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTSWZiGO9z_1QlLZgo0ESw5vu0O06b_a9SJDtwmx9FrXFCRjULx')
i6 = Ingredient.create(:name => 'salt', :measurment => '2 tsp', :cost => '1.75', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAEgtpLorJnS0QsFGybGYYBwDgctXaOdw7DZH1MXRTFL2JeB-N_w')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i4, i5, i6]
r2.ingredients = [i2, i3, i5, i6]
r3.ingredients = [i1, i2, i3]