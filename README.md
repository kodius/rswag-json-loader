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

By default, JSON Schema files are expeted to be in:
```
./spec/requests/api/schemas/json/*.json
```
If you want them elsewhere, override `schema_path`.

## 👷 Usage

Just create a JSON file in the aforementioned folder, e.g. `sessions_login_payload.json`, enter your JSON Schema inside it

```json
{
  "type": "object",
  "required": [
    "email",
    "password"
  ],
  "properties": {
    "email": {
      "type": "string"
    },
    "password": {
      "type": "string"
    }
  }
}
```

## 🚧 To-Do
*   [ ] YAML support
*   [ ] Tests


