{{define "title"}}Login{{end}}

{{define "main"}}
<form action="/user/login" method="POST">
  <input type='hidden' name='csrf_token' value='{{.CSRFToken}}'>
  {{range .Form.NonFieldErrors}}
    <div class="error">{{.}}</div>
  {{end}}
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
    <input type="password" name="password" value="{{.Form.Password}}" required>
  </div>
  <div>
    <input type="submit" value="Login">
  </div>
</form>
{{end}}