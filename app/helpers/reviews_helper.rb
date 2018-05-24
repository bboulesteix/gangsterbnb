module ReviewsHelper

  def compute_average(reviews)
    return 0 if reviews.empty?
    counter = 0
    weight = 0
    reviews.each do |review|
      next if review.rating.nil?
      counter += review.rating
      weight += 1
    end
    return counter.fdiv(weight).round(2)
  end
end
