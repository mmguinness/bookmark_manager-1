bookmark_manager specifications:

```
The website will have the following specifications:

Show a list of bookmarks
Add new bookmarks
Delete bookmarks
Update bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks
```

```
User story:

As an internet user
In order to have quick access to websites I use frequently
I would like to access a list of website bookmarks
```
```
As an internet user
In order to save a favourite website 
I would like to add a bookmark
```


Domain Model:

![](images/bookmark_manager_domain_model.png)




Instructions for 'bookmarks' database creation within psql.:

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

Instructions for 'bookmarks' test database creation within psql.:

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager_test;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql