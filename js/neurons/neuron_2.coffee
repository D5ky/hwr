a2 = new Array
W2 = new Array

neuron2 = ->
  sum2 = 0
  i = 0
  while i < 25 * 25
    sum2 += W2[i] * (if a2[Math.floor(i / 25)][i % 25] > 1 then 1 else -1)
    i++
  sum2 -= T2
  sum2

showParam2 = ->
  `var i`
  s = '<table>'
  i = 0
  while i < 25
    s += '<tr>'
        j = 0
    while j < 25
      ww = Math.round(W2[i * 25 + j] * 100) / 100
      color = 'FFFFFF'
      if ww > 0
        color = 'FF0000'
      if ww < 0
        color = '00FF00'
      s += '<td width=\'10px\' bgcolor=\'#' + color + '\'>' + ww + '</td>'
      j++
    s += '</tr>'
    i++
  s += '</table><br>'
  document.getElementById('table').innerHTML = s
  return

i = 0
while i < 25 * 25
  W2[i] = 0
  i++
T2 = 0
i = 0
while i < 25
  a2[i] = new Array
  k = 0
  while k < 25
    a2[i][k] = 0
    k++
  i++