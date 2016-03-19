var a4=new Array();
var W4=new Array();

for (var i=0;i<25*25;i++)
	W4[i]=0;

var T4=0;

for (var i=0;i<25;i++){
	a4[i]=new Array();
	for (var k=0;k<25;k++)
		a4[i][k]=0;
}

function neuron4(){
	sum4=0;
	for (var i=0;i<25*25;i++)
		sum4+=W4[i]*((a4[Math.floor(i/25)][i%25]>1?1:-1));
	sum4-=T4;
	
	return sum4
}

function showParam4(){
	s="<table>"
	for (var i=0;i<25;i++){
		s+="<tr>";
		for (var j=0;j<25;j++){
			ww=Math.round(W4[i*25+j]*100)/100;
			color="FFFFFF";
			if (ww>0)
				color="FF0000";
			if (ww<0)
				color="00FF00";

			s+="<td width='10px' bgcolor='#"+color+"'>"+ww+"</td>";
		}
			
		s+="</tr>";
			
	}
	s+="</table><br>";

	document.getElementById("table").innerHTML=s;
}