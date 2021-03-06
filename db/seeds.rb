# -*- coding: utf-8 -*-

# Populate Province database
Province.destroy_all
Province.create!(:name => "Álava")
Province.create!(:name => "Albacete")
Province.create!(:name => "Alicante")
Province.create!(:name => "Almería")
Province.create!(:name => "Ávila")
Province.create!(:name => "Badajoz")
Province.create!(:name => "Baleares")
Province.create!(:name => "Barcelona")
Province.create!(:name => "Burgos")
Province.create!(:name => "Cáceres")
Province.create!(:name => "Cádiz")
Province.create!(:name => "Castellón")
Province.create!(:name => "Ciudad Real")
Province.create!(:name => "Córdoba")
Province.create!(:name => "La Coruña")
Province.create!(:name => "Cuenca")
Province.create!(:name => "Gerona")
Province.create!(:name => "Granada")
Province.create!(:name => "Guadalajara")
Province.create!(:name => "Guipúzcoa")
Province.create!(:name => "Huelva")
Province.create!(:name => "Huesca")
Province.create!(:name => "Jaén")
Province.create!(:name => "León")
Province.create!(:name => "Lérida")
Province.create!(:name => "La Rioja")
Province.create!(:name => "Lugo")
Province.create!(:name => "Madrid")
Province.create!(:name => "Málaga")
Province.create!(:name => "Murcia")
Province.create!(:name => "Navarra")
Province.create!(:name => "Orense")
Province.create!(:name => "Asturias")
Province.create!(:name => "Palencia")
Province.create!(:name => "Las Palmas")
Province.create!(:name => "Pontevedra")
Province.create!(:name => "Salamanca")
Province.create!(:name => "Santa Cruz de Tenerife")
Province.create!(:name => "Cantabria")
Province.create!(:name => "Segovia")
Province.create!(:name => "Sevilla")
Province.create!(:name => "Soria")
Province.create!(:name => "Tarragona")
Province.create!(:name => "Teruel")
Province.create!(:name => "Toledo")
Province.create!(:name => "Valencia")
Province.create!(:name => "Valladolid")
Province.create!(:name => "Vizcaya")
Province.create!(:name => "Zamora")
Province.create!(:name => "Zaragoza")
Province.create!(:name => "Ceuta")
Province.create!(:name => "Melilla")

# Categories populate
Category.destroy_all
Category.create!(:name => "hombre / mujer")
Category.create!(:name => "mujer / hombre")
Category.create!(:name => "hombre / hombre")
Category.create!(:name => "mujer / mujer")

# Advert samples
Advert.destroy_all
province1_id = Province.find_by_name('Valencia').id
c_hombres = Category.find_by_name('hombre / mujer')
c_mujeres = Category.find_by_name('mujer / hombre')
c_gays = Category.find_by_name('hombre / hombre')
c_lesbianas = Category.find_by_name('mujer / mujer')
Advert.create!(:title => "Alice", :description => "Anuncio 1 para hombres del usuario 1", :category_id => c_hombres.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Amber", :description => "Anuncio 2 para hombres del usuario 1", :category_id => c_hombres.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Barbara", :description => "Anuncio 1 para hombres del usuario 2", :category_id => c_hombres.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Emilio", :description => "Anuncio 1 para mujeres del usuario 1", :category_id => c_mujeres.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Tom", :description => "Anuncio 2 para mujeres del usuario 1", :category_id => c_mujeres.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Trancos", :description => "Anuncio 1 para mujeres del usuario 2", :category_id => c_mujeres.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Chulo", :description => "Anuncio 1 para gays del usuario 1", :category_id => c_gays.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Pelutudo", :description => "Anuncio 2 para gays del usuario 1", :category_id => c_gays.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Huebón", :description => "Anuncio 1 para gays del usuario 2", :category_id => c_gays.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Generala", :description => "Anuncio 1 para lesbianas del usuario 1", :category_id => c_lesbianas.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Sumisa", :description => "Anuncio 2 para lesbianas del usuario 1", :category_id => c_lesbianas.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")
Advert.create!(:title => "Pasiva", :description => "Anuncio 1 para lesbianas del usuario 2", :category_id => c_lesbianas.id, :province_id => province1_id, :city => "Valencia", :contact_email => "test@test.com")