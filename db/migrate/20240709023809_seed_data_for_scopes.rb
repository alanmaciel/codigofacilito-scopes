class SeedDataForScopes < ActiveRecord::Migration[6.1]
  def up
    # Datos para el modelo User
    User.create(
      name: "Active Admin",
      email: "active_admin@example.com",
      active: true,
      role: "admin",
      created_at: 2.days.ago
    )
    User.create(
      name: "Inactive Admin",
      email: "inactive_admin@example.com",
      active: false,
      role: "admin",
      created_at: 2.days.ago
    )
    User.create(
      name: "Active User",
      email: "active_user@example.com",
      active: true,
      role: "user",
      created_at: 1.week.ago
    )
    User.create(
      name: "Inactive User",
      email: "inactive_user@example.com",
      active: false,
      role: "user",
      created_at: 1.week.ago
    )
    User.create(
      name: "Recent Signup",
      email: "recent_signup@example.com",
      active: true,
      role: "user",
      created_at: 1.day.ago
    )

    # Datos para el modelo Product
    Product.create(
      name: "In Stock Discounted",
      price: 10,
      stock: 20,
      discount: 2
    )
    Product.create(
      name: "In Stock No Discount",
      price: 15,
      stock: 30,
      discount: 0
    )
    Product.create(
      name: "Out of Stock Discounted",
      price: 20,
      stock: 0,
      discount: 5
    )
    Product.create(
      name: "Out of Stock No Discount",
      price: 25,
      stock: 0,
      discount: 0
    )

    # Datos para el modelo Article
    Article.create(
      title: "Published Recent",
      body: "Content",
      published_at: 2.weeks.ago,
      author_id: 1
    )
    Article.create(
      title: "Published Old",
      body: "Content",
      published_at: 2.years.ago,
      author_id: 2
    )
    Article.create(
      title: "Unpublished",
      body: "Content",
      published_at: nil,
      author_id: 1
    )

    # Datos para el modelo Post
    Post.create(title: "Popular Post", content: "Content", likes_count: 200)
    Post.create(title: "Unpopular Post", content: "Content", likes_count: 50)
  end

  def down
    User.delete_all
    Product.delete_all
    Article.delete_all
    Post.delete_all
  end
end
