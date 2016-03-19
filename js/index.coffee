calc = ->
  `var k`
  `var i`
  `var i`
  pixels = context.getImageData(0, 0, 100, 100)
  i = 0
  n = pixels.data.length
  while i < n
    if pixels.data[i] < 255
      a[Math.floor(i / (4 * 4 * 100))][Math.floor(i / 4 % 100 / 4)]++
      a2[Math.floor(i / (4 * 4 * 100))][Math.floor(i / 4 % 100 / 4)]++
      a3[Math.floor(i / (4 * 4 * 100))][Math.floor(i / 4 % 100 / 4)]++
      a4[Math.floor(i / (4 * 4 * 100))][Math.floor(i / 4 % 100 / 4)]++
      a5[Math.floor(i / (4 * 4 * 100))][Math.floor(i / 4 % 100 / 4)]++
    i += 4
  context2.beginPath()
  context2.fillStyle = '#000'
  i = 0
  while i < 25
        k = 0
    while k < 25
      if a[k][i] > 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a2[k][i] > 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a3[k][i] > 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a4[k][i] > 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a5[k][i] > 1
        context2.fillRect i * 4, k * 4, 4, 4
      k++
    i++
  context2.fillStyle = '#FFF'
  while i < 25
    k = 0
    while k < 25
      if a[k][i] <= 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a2[k][i] <= 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a3[k][i] <= 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a4[k][i] <= 1
        context2.fillRect i * 4, k * 4, 4, 4
      if a5[k][i] <= 1
        context2.fillRect i * 4, k * 4, 4, 4
      k++
    i++
  context2.stroke()
  sum = neuron1()
  sum2 = neuron2()
  sum3 = neuron3()
  sum4 = neuron4()
  sum5 = neuron5()
  if sum > 0
    document.getElementById('ans').innerHTML = 'Нейрон 1: 0'
  else if sum < 0
    document.getElementById('ans').innerHTML = 'Нейрон 1: 1'
  if sum2 > 0
    document.getElementById('ans2').innerHTML = 'Нейрон 2: 2'
  else if sum2 < 0
    document.getElementById('ans2').innerHTML = 'Нейрон 2: 3'
  if sum3 > 0
    document.getElementById('ans3').innerHTML = 'Нейрон 3: 4'
  else if sum3 < 0
    document.getElementById('ans3').innerHTML = 'Нейрон 3: 5'
  if sum4 > 0
    document.getElementById('ans4').innerHTML = 'Нейрон 4: 6'
  else if sum4 < 0
    document.getElementById('ans4').innerHTML = 'Нейрон 4: 7'
  if sum5 > 0
    document.getElementById('ans5').innerHTML = 'Нейрон 5: 8'
  else if sum5 < 0
    document.getElementById('ans5').innerHTML = 'Нейрон 5: 9'
  return

cl = ->
  #Очищаем
  i = 0
  while i < 25
        k = 0
    while k < 25
      a[k][i] = 0
      a2[k][i] = 0
      a3[k][i] = 0
      a4[k][i] = 0
      a5[k][i] = 0
      k++
    i++
  context.beginPath()
  context.fillStyle = '#ffcccc'
  context.strokeStyle = '#ff6969'
  context.fillRect 0, 0, 100, 100
  context.stroke()
  return

Mdown = ->
  down = true
  return

Mup = ->
  down = false
  return

Mmove = (e) ->
  if down
    context.beginPath()
    context.fillStyle = '#FFFFFF'
    context.strokeStyle = '#000'
    context.arc e.pageX, e.pageY, 4, 0, Math.PI * 2, true
    context.stroke()
  return

Al = 0.1
down = false
elem = document.getElementById('draw')
if elem and elem.getContext
  context = elem.getContext('2d')
  if context
    cl()
elem2 = document.getElementById('pix')
if elem2 and elem2.getContext
  context2 = elem2.getContext('2d')
  if context2
  else