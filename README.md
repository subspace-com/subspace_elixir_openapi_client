# SubspaceProductAPI

# Introduction  The Subspace API is based on REST, has resource-oriented URLs, returns JSON-encoded responses, and returns standardHTTP response codes.  The base URL for the API is &#x60;https://api.subspace.com/&#x60;  # Naming Convention  **EARLY ACCESS NOTE:** There is no “stable” version yet.  Once there is, the version name **stable** will be used to access the latest stable API version.   * Example: &#x60;https://api.subspace.com/stable&#x60; * Version name currently in use is: *v1*   * Example: &#x60;https://api.subspace.com/v1&#x60;  # Authentication  ## API Tokens  Subspace authenticates your API requests using JWT Bearer tokens.  The provided client library requires this JWT to be set before it can be used, by setting the local access token in the local configuration.  This is done by updating the configuration line marked \&quot;YOUR ACCESS TOKEN\&quot; by replacing the text \&quot;YOUR ACCESS TOKEN\&quot; with your JWT Bearer token.  Bearer tokens are granted by requesting one (as noted below) and presenting your publishable (client_id) and secret (client_secret) tokens.     Subspace provides two types of API tokens: publishable (client_id) and secret (client_secret).  These are available in the Subspace console.   * **Publishable** API tokens (client_id) are meant solely to identify your account with Subspace, they aren’t secret. They can be published in places like your website JavaScript code, or in an iPhone or Android app.   * **Secret** API tokens (client_secret) should be kept confidential and only stored on your own servers. Your account’s secret API token will allow you to acquire a valid JWT token authorized to perform any API request to Subspace.  ## Getting a JWT Bearer Token  Subspace uses auth0 for JWT token management.  You can acquire a JWT token by utilizing &#x60;https://id.subspace.com&#x60; and following the instructions in the curl example below.  ## Protecting Your API Tokens    * **JWT tokens have a expiration time of 24 hours.**  Once expired, you will have to use your Subspace private API and public token to request a new one.   * The Subspace private token can be rotated from within the Subspace console.  Rotation may take up to 10 minutes for all systems to update state to invalidate the older token and enable the new one. * **Keep your secret token safe.** Your secret token can make any API call on behalf of your account, including changes that may impact billing such as enabling pay-as-you-go charges. Do not store your secret token in your version control system. Do not use your secret token outside your web server, such as a browser, mobile app, or distributed file.   * **You may use the Subspace console to acquire an API token.**  * **You may use the Subspace console to disable pay-as-you-go.** This may prevent unexpected charges due to unauthorized or abnormal usage.  **Acquiring a valid JWT**  Command line example: &#x60;&#x60;&#x60; curl --request POST           --url &#39;https://id.subspace.com/oauth/token&#39;           --header &#39;content-type: application/json&#39;           --data &#39;{ \&quot;client_id\&quot;: YOURCLIENTID, \&quot;client_secret\&quot;: YOURCLIENTSECRET, \&quot;audience\&quot;: \&quot;https://api.subspace.com/\&quot;, \&quot;grant_type\&quot;: \&quot;client_credentials\&quot; }&#39; &#x60;&#x60;&#x60; 

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `subspace_openapi_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:subspace_openapi_client, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/subspace_openapi_client](https://hexdocs.pm/subspace_openapi_client).
