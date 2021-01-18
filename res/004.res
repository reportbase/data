<head>
<link rel="stylesheet" href="styles.css">
<script type="text/javascript" src="script.js"></script>
</head>

<body>
<iframe name=ifr id=ifr src="/?p=boss/{GALLERY}&k=0000&e=0&a=1&f=1" style="max-height:520" 
    frameborder=0 height=50% width=100% ></iframe><br>
<p>
<center>
<table>
<tr>
<td>
</td>
<td align=center width=800>
<h3>

<div class="media">
    <div class="title">
        {TITLE}
    </div>

    <div class=content>
        <div id="links"></div>
    </div>
    <div class="footer">
        repba.image.services
    </div>
</div>

</h3> </td>
<td></td>
</tr>
</table>
<script type="text/javascript" src="iframe.js"></script>
<script>
    links().innerHTML = getstring("{GALLERY}", {PROJECTS}, {SIZE});
</script>
</body>

