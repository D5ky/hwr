var a3=new Array();
var W3=new Array();

for (var i=0;i<25*25;i++)
	W3[i]=0;

var T3=0;

for (var i=0;i<25;i++){
	a3[i]=new Array();
	for (var k=0;k<25;k++)
		a3[i][k]=0;
}

function neuron3(){
	sum3=0;
	for (var i=0;i<25*25;i++)
		sum3+=W3[i]*((a3[Math.floor(i/25)][i%25]>1?1:-1));
	sum3-=T3;
	
	return sum3
}

function showParam3(){
	s="<table>"
	for (var i=0;i<25;i++){
		s+="<tr>";
		for (var j=0;j<25;j++){
			ww=Math.round(W3[i*25+j]*100)/100;
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