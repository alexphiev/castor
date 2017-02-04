module BooksHelper
  def book_link book
    html = "<a href='/books/#{book.id}'>".html_safe
    if book.category
        html += "#{book.title} (#{book.category.title})"
    else
        html += book.title
    end
    html+= "</a>".html_safe
  end
end
