vim.o.statusline = table.concat({
  -- full path to file in buffer
  '%F',
  -- modified flag
  '%m',
  -- readonly flag
  '%r',
  -- help flag
  '%h',
  -- preview flag
  '%w',
  -- number of lines
  '[%L]',
  -- current fileformat
  -- '[%{&ff}]',
  -- current syntax
  '%y',
  -- % percentage into file
  -- '[%p%%]',
  -- current line, current column
  '[%04l,%04v]',
})
