<?php 
    $connect = mysqli_connect('localhost','root','','polecenia');
?>
</html>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Graficzny edytor HTML</title>
</head>
<body>
<script  src="https://code.jquery.com/jquery-3.5.1.min.js" integrity= "sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<div id="window">
<?php 
    $zapytanie = "SELECT * FROM argumenty";
    $zapytanie2 = "SELECT * FROM argumenty01";
    $query = mysqli_query($connect,$zapytanie);
    $query2 = mysqli_query($connect,$zapytanie2);
    $rows = mysqli_fetch_all($query,MYSQLI_ASSOC);
    $rows2 = mysqli_fetch_all($query2,MYSQLI_ASSOC);

    foreach($rows2 as $w2){
    echo<<<END
        <input class="button" type="submit" value="{$w2['value']}" id="{$w2['name']}" onclick="{$w2['arg']}()">
    END;
    }

    foreach($rows as $w){
    echo<<<END
        <input class="button" type="submit" value="{$w['value']}" id="{$w['name']}" onclick="insert('{$w['arg']}')">
    END;
    }
?>
</div>
<br>
<div id="okno">
<textarea id="text"></textarea>
<textarea id="text2"></textarea> 
</div>

<div class="float">
    <button id="download1" onclick="clearTextArea()"><div id="how"><img src="delete.png" id="icon"></div></button>
</div>

<div class="float">
    <button id="download"><div id="how"><img src="icon.png" id="icon"></div></button>
</div>
<script>

    function save_file() {
        var textToSave = document.getElementById('text').value;
        var hiddenElement = document.createElement('a');

        hiddenElement.href = 'data:attachment/text,' + encodeURI(textToSave);
        hiddenElement.target = '_blank';
        hiddenElement.download = 'index.html';
        hiddenElement.click();
    }
    document.getElementById('download').addEventListener('click', save_file);

    function clearTextArea(){
        document.getElementById("text").value = " ";
        document.getElementById("text2").value = " ";
    }
</script>
</body>
</html>