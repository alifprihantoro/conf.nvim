function TesCompletil() abort
  let words = ['anya' , 'naruto' , 'hello']
  " call complete(col('hel.'),words)
  call complete_info(col('.'),words)
  return ''
endfunction

