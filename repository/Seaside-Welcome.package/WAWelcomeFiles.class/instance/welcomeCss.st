resources
welcomeCss
	^ '/* ---- html ---- */
body { background-color: #fff; }
body, table, tr, td, th {
    color: #002842;
    font-size: 16px;
    line-height: 1.75;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
body, div, span, table, tr, td, th, img, form { border: 0; margin: 0; padding: 0; }
a, a:visited { color: #008aff; }

/* ---- contents ---- */
h1.logo { background: url("logo.png") no-repeat center center; height: 200px; }
h1.logo span { display: none; }
h2.welcome, p.congrats { text-align: center; }
div.body { width: 1024px; margin: 50px auto 0 auto; }

table.welcome { table-layout: fixed; }
table.welcome td { vertical-align: top; width: 50%; padding: 0 2em; }
form.config { width: 50%; margin: 0 auto; }
form.config input.checkbox { width: 20px; height: 20px; margin-right: 1em; }
form.config label { vertical-align: top; }
form.config .buttons { text-align: center; margin-top: 1em; }
form.config .buttons a { margin: 0 1em; }'