##usersテーブル
 
|name|type|option|
|:-----|:---------:|----------:|
| id      |integer|           |
|name     |string |null :false|
|password |string |           |
|created_at|timestamp|        |
|updated_at|timestamp|        |
	has_many :messages
	has_many :group_users
	has_many :groups, through::group_users

##groupsテーブル

|name|type|option|
|:-----|:---------:|----------:|
| id      |integer|           |
|name     |string |null :false|
|created_at|timestamp|        |
|updated_at|timestamp|        |
	has_many :users, through::group_users
	has_many :messages
	has_many :group_users

##messagesテーブル

|name|type|option|
|:-----|:---------:|----------:|
| id      |integer|           |
|content_id |integer|         |
|group_id|integer|            |
|created_at|timestamp|        |
|updated_at|timestamp|        |
	belongs_to :user
	belongs_to :group


##group_usersテーブル

|name|type|option|
|:-----|:---------:|----------:|
| id      |integer|           |
|content_id |integer |        |
|group_id|integer|            |
|user_id|  integer|           |
|created_at|timestamp|        |
|updated_at|timestamp|        |
	has_many :users
	belongs_to :groups



