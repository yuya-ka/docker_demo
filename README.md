# テーブル設計

## productsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| city     | string     | null: false                    |
| price    | integer    | null: false                    |
| content  | text       | null: false                    |
| category | references | null: false, foreign_key: true |

### Association

- belongs_to :category

## categoryテーブル

| Column      | Type       | Options                |
| ----------- | ---------- | ---------------------- |
| title       | string     | null: false            |

### Association

- has_many :products