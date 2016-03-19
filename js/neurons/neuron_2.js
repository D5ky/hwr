var a2=new Array();
var W2=new Array();

for (var i=0;i<25*25;i++)
	W2[i]=0;

var T2=0;

for (var i=0;i<25;i++){
	a2[i]=new Array();
	for (var k=0;k<25;k++)
		a2[i][k]=0;
}

function neuron2(){
	sum2=0;
	for (var i=0;i<25*25;i++)
		sum2+=W2[i]*((a2[Math.floor(i/25)][i%25]>1?1:-1));
	sum2-=T2;
	
	return sum2
}

function showParam2(){
	s="<table>"
	for (var i=0;i<25;i++){
		s+="<tr>";
		for (var j=0;j<25;j++){
			ww=Math.round(W2[i*25+j]*100)/100;
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