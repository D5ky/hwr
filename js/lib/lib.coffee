this0 = ->
  while neuron1() <= 0
    i = 0
    while i < 25 * 25
      x = if a[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W[i] = W[i] + Al * x * 2
      i++
    T = T - (Al * 2)
  showParam1()
  document.getElementById('ans').innerHTML = 'Запоминаем 0'
  return

this1 = ->
  while neuron1() >= 0
    i = 0
    while i < 25 * 25
      x = if a[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W[i] = W[i] - (Al * x * 2)
      i++
    T = T + Al * 2
  showParam1()
  document.getElementById('ans').innerHTML = 'Запоминаем 1'
  return

this2 = ->
  while neuron2() <= 0
    i = 0
    while i < 25 * 25
      x = if a2[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W2[i] = W2[i] + Al * x * 2
      i++
    T2 = T2 - (Al * 2)
  showParam2()
  document.getElementById('ans2').innerHTML = 'Запоминаем 2'
  return

this3 = ->
  while neuron2() >= 0
    i = 0
    while i < 25 * 25
      x = if a2[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W2[i] = W2[i] - (Al * x * 2)
      i++
    T2 = T2 + Al * 2
  showParam2()
  document.getElementById('ans2').innerHTML = 'Запоминаем 3'
  return

this4 = ->
  while neuron3() <= 0
    i = 0
    while i < 25 * 25
      x = if a3[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W3[i] = W3[i] + Al * x * 2
      i++
    T3 = T3 - (Al * 2)
  showParam3()
  document.getElementById('ans3').innerHTML = 'Запоминаем 4'
  return

this5 = ->
  while neuron3() >= 0
    i = 0
    while i < 25 * 25
      x = if a3[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W3[i] = W3[i] - (Al * x * 2)
      i++
    T3 = T3 + Al * 2
  showParam3()
  document.getElementById('ans3').innerHTML = 'Запоминаем 5'
  return

this6 = ->
  while neuron4() <= 0
    i = 0
    while i < 25 * 25
      x = if a4[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W4[i] = W4[i] + Al * x * 2
      i++
    T4 = T4 - (Al * 2)
  showParam4()
  document.getElementById('ans4').innerHTML = 'Запоминаем 6'
  return

this7 = ->
  while neuron4() >= 0
    i = 0
    while i < 25 * 25
      x = if a4[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W4[i] = W4[i] - (Al * x * 2)
      i++
    T4 = T4 + Al * 2
  showParam4()
  document.getElementById('ans4').innerHTML = 'Запоминаем 7'
  return

this8 = ->
  while neuron5() <= 0
    i = 0
    while i < 25 * 25
      x = if a5[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W5[i] = W5[i] + Al * x * 2
      i++
    T5 = T5 - (Al * 2)
  showParam5()
  document.getElementById('ans5').innerHTML = 'Запоминаем 8'
  return

this9 = ->
  while neuron5() >= 0
    i = 0
    while i < 25 * 25
      x = if a5[Math.floor(i / 25)][i % 25] > 1 then 1 else -1
      W5[i] = W5[i] - (Al * x * 2)
      i++
    T5 = T5 + Al * 2
  showParam5()
  document.getElementById('ans5').innerHTML = 'Запоминаем 9'
  return