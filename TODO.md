## Composition
1. User system
2. App system
3. Order system
4. mount the database from outside valume


## models
1. User
2. Manager
3. Product
4. Category
5. Payment
6. License
7. Order
8. WishItem


## pages
1. Sign up/in
2. (Home page)Products Page
3. Product details page(maybe a Pop up)
6. User dashboard
6. Management dashboard
7. Add Wish page

---

```
rails g scaffold User mobile:string name:string email:string
rails g scaffold Tag name:string
rails g scaffold Product name:string image:string original_price:integer price:integer summary:string describe:text
rails g scaffold Order product_id:integer user_id:integer price:integer out_trade_no:string order_state:integer
rails g model ProductTagRelation product_id:integer tag_id:integer
```