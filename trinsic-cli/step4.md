Let's go ahead and issue a credential using the template we just created!

The first thing you will need is the full template id:

`trinsic template list`{{execute}}

Find the ID of the `Trinsic CLI Master` credentials we just created. It will in the form of a urn:

`urn:template:<ecosystem ID>:trinsic-cli-master`

Now you will need to update the values you want to issue:

`nano values.json`{{execute}}

Finally let's issue the credential (copy and paste into the terminal, then fill in your template ID):

`trinsic vc issue-from-template --values-file './values.json' --template-id `{{copy}}