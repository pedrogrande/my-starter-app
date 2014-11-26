Rails.configuration.stripe = {
	publishable_key: 'pk_test_TqwxbpH4DJQq5Cxt1iaOHqT8',
	secret_key:      'sk_test_lLqD3ovDSCZQHI8JO4Czposs'
}
Stripe.api_key = \
Rails.configuration.stripe[:secret_key]