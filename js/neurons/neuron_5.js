var a5=new Array();
var W5=new Array();

for (var i=0;i<25*25;i++)
	W5[i]=0;

var T5=0;

for (var i=0;i<25;i++){
	a5[i]=new Array();
	for (var k=0;k<25;k++)
		a5[i][k]=0;
}

function neuron5(){
	sum5=0;
	for (var i=0;i<25*25;i++)
		sum5+=W5[i]*((a5[Math.floor(i/25)][i%25]>1?1:-1));
	sum5-=T5;
	
	return sum5
}

function showParam5(){
	s="<table>"
	for (var i=0;i<25;i++){
		s+="<tr>";
		for (var j=0;j<25;j++){
			ww=Math.round(W5[i*25+j]*100)/100;
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