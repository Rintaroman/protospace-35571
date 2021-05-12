# テーブル設計

## users テーブル

| Colum      | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### association

- has_many :prototypes 
- has_many :comments


## prototypes テーブル

| colum      | Type   | Options     |
| ---------- | ------ | ----------- |
| title      | string | null: false |
| catch_copy | text   | null: false |
| concept    | text   | null: false |
| image      |        |             |

### association

- belongs_to : user
- has_many : messages


## comments テーブル

| Colum   | Type   | Options     |
| ------- | ------ | ----------- |
| content | string | null: false |


### association

- belongs_to : user
- belongs_to : prototype

