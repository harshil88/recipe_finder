# Recipe Finder
An app to discover your favourite recipes from the <b><i>Edamam recipe search api</b></i>. Not only that but you can bookmark your favourite recipes, and add the ingredients of your preferred food, in a to-do-list manner.

## Edamam Recipe Search API:
It is a big database of food and I have used its api for creating this app, and in particular Recipe Search Api.<br>
[Link to Edamam Homepage](https://www.edamam.com/)

# Documentation:

The app mainly contains three screen, navigation of which is done using `BottomNavigationBar` widget of Flutter. 
## Recipes Page:
It contains a `TextField` where user searches for the desired food. Also it has a `popup button`, which stores the recent searches made by the user. The state is persisted using `shared preference` for state persistence. Here `FutureBuilder` widget is used with `ListBuilder` for showing the received recipes. 
<br><br>
<image src = 'androidScreens/recipes_screen.jpg' height = '378' weight = '180'>
<image src = 'androidScreens/pop_up_menu.jpg' height = '378' weight = '180'>
## Recipe Detail Page:
When a user taps on his desired listtile, the detail page opens up. It contains a `BackButton` and Bookmark Button, tapping on which the recipe will be added to the BookMarks list, and the ingredients will be added to the Groceries to-do-list via `Provider` as state-management. 
<br><br>
<image src = 'androidScreens/recipe_detail_screen.jpg' height = '378' weight = '180'>
## Bookmarks Page
The bookmarks page contains a list of all the recipes that the user has bookmarked.
<br><br>
<image src = 'androidScreens/bookmarks_screen.jpg' height = '378' weight = '180'>  
## Groceries Page
It contains a list of all the ingredients of the groceries that the user has either purchased or they are remaining to be purchased. Also, I have used `StreamBuilder` to dive deep in Dart language and for more solid state management.
<br><br>
<image src = 'androidScreens/recipes_screen.jpg' height = '378' weight = '180'>

# Important Packages:
## Dev Dependecies:
`shared_preferences:` for storing data locally.<br>
`json_annotation`: made my life a lot easier for managing json data.<br>
`chopper`: made http request handling really well.<br>
`logging` : to log network requests made by the user.<br>

## Dependecies:
`build_runner`: To genrate JSON and Chopper automated files.<br>
`json_serializable` : for JSON modelling.<br>
`chooper_generator` : For generating chopper files.<br>

