var a=new Array();
var W=new Array();

for (var i=0;i<25*25;i++)
	W[i]=0;

var T=0;

for (var i=0;i<25;i++){
	a[i]=new Array();
	for (var k=0;k<25;k++)
		a[i][k]=0;
}

function neuron1(){
	sum=0;
	for (var i=0;i<25*25;i++)
		sum+=W[i]*((a[Math.floor(i/25)][i%25]>1?1:-1));
	sum-=T;
	
	return sum
}

function showParam1(){
	s="<table>"
	for (var i=0;i<25;i++){
		s+="<tr>";
		for (var j=0;j<25;j++){
			ww=Math.round(W[i*25+j]*100)/100;
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