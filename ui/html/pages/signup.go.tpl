{{define "title"}}Signup{{end}}

{{define "main"}}
<form action="/user/signup" method="POST">
  <input type='hidden' name='csrf_token' value='{{.CSRFToken}}'>
  <div>
    <label>Name:</label>
    {{with .Form.FieldErrors.name}}
      <label class="error">{{.}}</label>
    {{end}}
    <input type="text" name="name" value="{{.Form.Name}}" required>
  </div>
  <div>
    <label>Email:</label>
    {{with .Form.FieldErrors.email}}
      <label class="error">{{.}}</label>
    {{end}}
    <input type="email" name="email" value="{{.Form.Email}}" required>
  </div>
  <div>
    <label>Password:</label>
    {{with .Form.FieldErrors.password}}
      <label class="error">{{.}}</label>
    {{end}}
    <input type="password" name="password" required>
  </div>
  <div>
    <input type="submit" value="Signup"/>
  </div>
</form>
{{end}}