json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :star_rating, :review, :business_id, :user_id
  json.url testimonial_url(testimonial, format: :json)
end
