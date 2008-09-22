*seaside-html5
marked
	"no known browser support
	
	The m element represents a run of text marked or highlighted.

In the following snippet, a paragraph of text refers to a specific part of a code fragment.

<p>The highlighted part below is where the error lies:</p>
<pre><code>var i: Integer;
begin
   i := <m>1.1</m>;
end.</code></pre>

Another example of the m element is highlighting parts of a document that are matching some search string. If someone looked at a document, and the server knew that the user was searching for the word 'kitten', then the server might return the document with one paragraph modified as follows:

<p>I also have some <m>kitten</m>s who are visiting me
these days. They're really cute. I think they like my garden!</p>"
	^ self tag: 'm'