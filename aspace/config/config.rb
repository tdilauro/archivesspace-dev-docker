AppConfig[:db_url] = 'jdbc:mysql://mysql:3306/archivesspace?user=archivesspace&password=archivesspace&useUnicode=true&characterEncoding=UTF-8'

AppConfig[:default_page_size] = 100
AppConfig[:max_page_size] = 3000

## Log level for the backend, values: (everything) [debug], info, warn, error, fatal (severe only)
AppConfig[:backend_log_level] = "info"

#AppConfig[:backend_url] = "http://localhost:8089"
#AppConfig[:frontend_url] = "http://localhost:8080"
#AppConfig[:frontend_prefix] = proc { "#{URI(AppConfig[:frontend_url]).path}/".gsub(%r{/+$}, "/") }
#AppConfig[:solr_url] = "http://localhost:8090"
#AppConfig[:indexer_url] = "http://localhost:8091"
#AppConfig[:public_url] = "http://localhost:8081"

## Plug-ins to load. They will load in the order specified
# AppConfig[:plugins] = ['local']

