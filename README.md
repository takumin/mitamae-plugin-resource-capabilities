# mitamae-plugin-resource-capabilities

```ruby
capabilities 'cap_ipc_lock' do
  path '/usr/local/bin/vault'
  effective true
  permitted true
  inheritable false
end
```

```shell
 $ getcatp /usr/local/bin/vault
/usr/local/bin/vault = cap_ipc_lock+ep
```

```ruby
capabilities 'cap_ipc_lock' do
  action :absent
end
```

```shell
 $ getcap /usr/local/bin/vault
/usr/local/bin/vault =
```

```ruby
capabilities :all do
  action :absent
end
```

```shell
 $ getcap /usr/local/bin/vault
```
