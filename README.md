# テーブル設計

## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| nickname  | string | null: false |
| email     | string | null: false |
| password  | string | null: false |
| image     | string |             |
| introduce | string |             |

### Association

- has_many :books
- has_many :comments


## books テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| image       | string     | null: false                    |
| author      | string     | null: false                    |
| description | string     |                                |
| date        | date       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| book   | references | null: false, foreign_key: true |
| text   | string     | null: false                    |

### Association

- belongs_to :user
- belongs_to :book