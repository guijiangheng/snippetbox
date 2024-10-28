{{define "title"}}Create a New Snippet{{end}}

{{define "main"}}
<form action="/snippet/create" method="POST">
  <input type='hidden' name='csrf_token' value='{{.CSRFToken}}'>
  <div>
    <label>Title:</label>
    {{with .Form.FieldErrors.title}}
      <label class="error">{{.}}</label>
    {{end}}
    <input type="text" name="title" required value="{{.Form.Title}}">
  </div>
  <div>
    <label>Content:</label>
    {{with .Form.FieldErrors.content}}
      <label class="error">{{.}}</label>
    {{end}}
    <textarea name="content" required value="{{.Form.Content}}"></textarea>
  </div>
  <div>
    <label>Delete in:</label>
    {{with .Form.FieldErrors.expires}}
      <label class="error">{{.}}</label>
    {{end}}
    <input type="radio" name="expires" value="365" {{if (eq .Form.Expires 365)}}checked{{end}}> One Year
    <input type="radio" name="expires" value="7" {{if (eq .Form.Expires 7)}}checked{{end}}> One Week
    <input type="radio" name="expires" value="1" {{if (eq .Form.Expires 1)}}checked{{end}}> One Day
  </div>
  <div>
    <input type="submit" value="Publish snippet">
  </div>
</form>
{{end}}