

function zaznacz(ulId, prOdp) 
{
        var odp = document.getElementById(ulId).style.color = "#f1c40f";

        var ul =  document.getElementById(ulId).style.listStyleImage = "url('images/"+ulId+"2.png')";

    setTimeout(function(){poprawna(prOdp)},3000); //zmien w bazie nrOdp na litere   

}

function poprawna(x)
{    
    var ul = document.getElementById(x).style.color = "#2ecc71";
    
    var li = document.getElementById(x).style.listStyleImage = "url('images/"+x+"3.png')";

    
}

var sekundy = 30;

function odliczanie()
{
    
    if(sekundy == 0)
    {
     sekundy = 30;
    }
    
     sekundy--;
    
    if(sekundy < 10)
        document.getElementById("odliczanie").innerHTML= "00"+":0"+sekundy;
    else
        document.getElementById("odliczanie").innerHTML= "00"+":"+sekundy;
    
    if(sekundy != 0)
        setTimeout("odliczanie()",1000);
        
   else if(sekundy == 0)
   {
       setTimeout("zmien()",0000);
    document.getElementById("odliczanie").innerHTML="";
   }
    
}




