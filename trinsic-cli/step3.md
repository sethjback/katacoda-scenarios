Leveraging templates to interact with credentials is powerful. It lets us define ahead of time how we want the credential to look, what fields are required, and enables us to imply provide values during issuance rather than some large and complicated json blog.

Let's create one now!

Template are essentially just a json list of attributes:

<pre>
    <code class="json">
{
    "firstName": {
      "description": "First Name",
      "optional": true
    },
    "credentialType": {
      "description": "Credential Type",
      "optional": false
    },
    "lastName": {
      "description": "Last Name",
      "optional": true
    },
    "credentialIssuer": {
      "description": "Credential Issuer",
      "optional": false
    }
  }
  </code>
</pre>

We've already uploaded some values for you:

`cat templ.json`{{execute}}

Let's send create that template in our newly minted ecosystem:

`trinsic template create --name 'Trinsic CLI Master' --fields-file './templ.json'`{{execute}}

Once the template is created you will see the full template returned, which will include context and schema uri.

(highlight here the id is a `urn` namespaced under their ecosystem)