**DATABASE**

# Ce qui va générer dans le dossier db/migrate/ le fichier   table_books.rb, avec la date et l’heure à la place de l’astérisque.
rails generate migration TableBooks

#Contenu du fichier créé
class TableBooks < ActiveRecord::Migration
  def change
    create_table :books
    add_column :books, :title, :string
  end
end

# Lors de l'ajout de colones qui font le lien entre plusieurs tables, on ajoute la ligne index => perf
class AddCategoryIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :category_id, :integer
    add_index :books, :category_id
  end
end

#Appliquer les changements dans la DB
rake db:migrate

#Créer un nouveau controleur de base de donnée
rails generate controller nom_table nom_fonction

#Ajout d'une ligne dans la table + ajout de paramètres + insert SQL
mon_livre = Book.new
mon_livre.title = "Dictionnaire"
mon_livre.save
OU
Book.create title: "Le Petit Prince", author: "St Exupéry"

#Lire et Modifier un paramètre de la DB
mon_livre = Book.find(1)
mon_livre.title = "Pages Blanches"
mon_livre.save

#Supprimer une ligne
mon_livre = Book.find(1)
mon_livre.destroy

#Retourne la table entière
Table.all

# Retrouver tous les éléments correspondant
Book.where(wanted_param: "wanted_value")

# Lier des modèles entre eux
class Book < ActiveRecord::Base
  belongs_to :category
end

class Category < ActiveRecord::Base
  has_many :books
end
# Utilité des liens
Book.find(X).category
Category.find(Y).books 

**RAILS**
#Rails server launch
rails s

#Rails console
rails console
