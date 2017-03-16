
## <a name="resource-user">User</a>

Stability: `prototype`

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when user was created | `"2015-01-01T12:00:00Z"` |
| **email** | *string* | unique email of user | `"sample@sample.jp"` |
| **id** | *uuid* | unique identifier of user | `1` |
| **updated_at** | *date-time* | when user was updated | `"2015-01-01T12:00:00Z"` |

### <a name="link-POST-user-/users">User Create</a>

Create a new user.

```
POST /users
```


#### Curl Example

```bash
$ curl -n -X POST /users \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 1,
  "email": "sample@sample.jp",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-DELETE-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Delete</a>

Delete an existing user.

```
DELETE /users/{user_id}
```


#### Curl Example

```bash
$ curl -n -X DELETE /users/$USER_ID \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 1,
  "email": "sample@sample.jp",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-GET-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Info</a>

Info for existing user.

```
GET /users/{user_id}
```


#### Curl Example

```bash
$ curl -n /users/$USER_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 1,
  "email": "sample@sample.jp",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-GET-user-/users">User List</a>

List existing users.

```
GET /users
```


#### Curl Example

```bash
$ curl -n /users
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
[
  {
    "created_at": "2015-01-01T12:00:00Z",
    "id": 1,
    "email": "sample@sample.jp",
    "updated_at": "2015-01-01T12:00:00Z"
  }
]
```

### <a name="link-PATCH-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Update</a>

Update an existing user.

```
PATCH /users/{user_id}
```


#### Curl Example

```bash
$ curl -n -X PATCH /users/$USER_ID \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 1,
  "email": "sample@sample.jp",
  "updated_at": "2015-01-01T12:00:00Z"
}
```


