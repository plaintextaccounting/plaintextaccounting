-- Pandoc's wikilinks_title_after_pipe extension makes a start at linking
-- [[bracketed wiki links]]. This lua filter does the rest, mimicking
-- Obsidian's wiki linking where possible. It
-- - hyphen-replaces problem characters in the uri
-- - adds ".html" to the uri path
-- - preserves the uri fragment if any
-- - lower-cases the uri fragment

function Link(elem)
   if elem.title == "wikilink" then
      t = elem.target .. "#"
      t = string.gsub(t, " ", "-")
      -- t = string.gsub(t, "'", "")
      path, frag = string.match(t, "([^#]*)#([^#]*)")
      t = path
      if string.len(path) > 0 then
         t = t .. ".html"
      end
      if string.len(frag) > 0 then
         frag = pandoc.text.lower(frag)
         t = t .. "#" .. frag
      end
      elem.target = t
   end
   return elem
end
