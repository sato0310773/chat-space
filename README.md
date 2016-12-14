##usersテーブル
 
|record|column  |other      |
|:-----|---------:|----------:|
| id      |integer|           |
|name     |string |null :false|
|user_id  |integer|           |
|password |string |           |
||       timestamp|           |
	has_many :messages, as: :messageable
	belongs_to :groups

##groupsテーブル

|record|column   |other      |
|:-----|---------:|----------:|
| id      |integer|           |
|name     |string |null :false|
|         |timestamp|         |
	has_many :messages, as: :messageable
	has_many :users

##messagesテーブル

|record|column  |other      |
|:-----|---------:|----------:|
| id      |integer|           |
|content_id |integer |null :false|
|group_id|integer|            |
||       timestamp|           |
	belongs_to :messageable, polymorphic: true

##group_usersテーブル

|record|column  |other      |
|:-----|---------:|----------:|
| id      |integer|           |
|content_id |integer |null :false|
|group_id|integer|            |
||       timestamp|           |
	has_many :users
	belongs_to :groups



