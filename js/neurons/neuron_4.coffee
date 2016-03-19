a4 = new Array
W4 = new Array

neuron4 = ->
  sum4 = 0
  i = 0
  while i < 25 * 25
    sum4 += W4[i] * (if a4[Math.floor(i / 25)][i % 25] > 1 then 1 else -1)
    i++
  sum4 -= T4
  sum4

showParam4 = ->
  `var i`
  s = '<table>'
  i = 0
  while i < 25
    s += '<tr>'
        j = 0
    while j < 25
      ww = Math.round(W4[i * 25 + j] * 100) / 100
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
  W4[i] = 0
  i++
T4 = 0
i = 0
while i < 25
  a4[i] = new Array
  k = 0
  while k < 25
    a4[i][k] = 0
    k++
  i++