local stl = {
  '%F',
  '%m',
  '%r',
  '%h',
  '%w',
  '[%L]',
  '[%{&ff}]',
  '%y',
  '[%p%%]',
  '[%04l,%04v]',
}

vim.o.statusline = table.concat(stl);
