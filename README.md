# 💎 rswag-json-loader

Use JSON schema files for your Swagger/OpenAPI definitions, instead of storing them in `swagger_helper.rb`

## 🚀 Installation

Add this line to your `Gemfile`

```ruby
gem 'rswag_json_loader'
```

Add this line to your `swagger_helper.rb`

```ruby
RswagJsonLoader::SchemaHandler.setup!
```

By default, JSON schema files are expeted to be in:
```
./spec/requests/api/schemas/json/*.json
```
If you want them elsewhere, override `schema_path`.
