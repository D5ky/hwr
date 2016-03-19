function this0(){
	while (neuron1()<=0){
		
		for (var i=0;i<25*25;i++){
			x=(a[Math.floor(i/25)][i%25]>1?1:-1);
			W[i]=W[i]+Al*x*2;
		}
		T=T-Al*2;
	} 
	showParam1();
	document.getElementById("ans").innerHTML="Запоминаем 0";
}
function this1(){
	while (neuron1()>=0){
		for (var i=0;i<25*25;i++){
			x=(a[Math.floor(i/25)][i%25]>1?1:-1);
			W[i]=W[i]-Al*x*2;
		}
		T=T+Al*2;
	}
	showParam1();
	document.getElementById("ans").innerHTML="Запоминаем 1";
}

function this2(){
	while (neuron2()<=0){
		
		for (var i=0;i<25*25;i++){
			x=(a2[Math.floor(i/25)][i%25]>1?1:-1);
			W2[i]=W2[i]+Al*x*2;
		}
		T2=T2-Al*2;
	} 
	showParam2();
	document.getElementById("ans2").innerHTML="Запоминаем 2";
}
function this3(){
	while (neuron2()>=0){
		for (var i=0;i<25*25;i++){
			x=(a2[Math.floor(i/25)][i%25]>1?1:-1);
			W2[i]=W2[i]-Al*x*2;
		}
		T2=T2+Al*2;
	}
	showParam2();
	document.getElementById("ans2").innerHTML="Запоминаем 3";
}

function this4(){
	while (neuron3()<=0){
		
		for (var i=0;i<25*25;i++){
			x=(a3[Math.floor(i/25)][i%25]>1?1:-1);
			W3[i]=W3[i]+Al*x*2;
		}
		T3=T3-Al*2;
	} 
	showParam3();
	document.getElementById("ans3").innerHTML="Запоминаем 4";
}
function this5(){
	while (neuron3()>=0){
		for (var i=0;i<25*25;i++){
			x=(a3[Math.floor(i/25)][i%25]>1?1:-1);
			W3[i]=W3[i]-Al*x*2;
		}
		T3=T3+Al*2;
	}
	showParam3();
	document.getElementById("ans3").innerHTML="Запоминаем 5";
}

function this6(){
	while (neuron4()<=0){
		
		for (var i=0;i<25*25;i++){
			x=(a4[Math.floor(i/25)][i%25]>1?1:-1);
			W4[i]=W4[i]+Al*x*2;
		}
		T4=T4-Al*2;
	} 
	showParam4();
	document.getElementById("ans4").innerHTML="Запоминаем 6";
}
function this7(){
	while (neuron4()>=0){
		for (var i=0;i<25*25;i++){
			x=(a4[Math.floor(i/25)][i%25]>1?1:-1);
			W4[i]=W4[i]-Al*x*2;
		}
		T4=T4+Al*2;
	}
	showParam4();
	document.getElementById("ans4").innerHTML="Запоминаем 7";
}

function this8(){
	while (neuron5()<=0){
		
		for (var i=0;i<25*25;i++){
			x=(a5[Math.floor(i/25)][i%25]>1?1:-1);
			W5[i]=W5[i]+Al*x*2;
		}
		T5=T5-Al*2;
	} 
	showParam5();
	document.getElementById("ans5").innerHTML="Запоминаем 8";
}
function this9(){
	while (neuron5()>=0){
		for (var i=0;i<25*25;i++){
			x=(a5[Math.floor(i/25)][i%25]>1?1:-1);
			W5[i]=W5[i]-Al*x*2;
		}
		T5=T5+Al*2;
	}
	showParam5();
	document.getElementById("ans5").innerHTML="Запоминаем 9";
}