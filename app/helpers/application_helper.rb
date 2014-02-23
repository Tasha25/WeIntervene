module ApplicationHelper
end

module PaginationHelper
  def paginate(array, page_num = 1)
    elements_per_page = 4
    start = elements_per_page * (page_num.to_i-1)
    array.slice(start, elements_per_page)
  end
end

# I am putting in an argument that is the array of students. We call it an argument because we are passing it into the function.
# The params[:page]) is the amount of pages that we will have sent into the secong argument. Q/ the params[:page] is determented by what?
# We have to assign the method to the variable because the slice method does not change the array so in order to print out the information we will have to assign the paginate method to

# query paramaters are the things that are passed into the end of your url so params will give you back an hash of the query params.

#Testing question: If I don't have a page query paramater it should show the first four students.... this should be the default. This is the base case.



