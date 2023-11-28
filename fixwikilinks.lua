-- Pandoc's wikilinks_title_after_pipe extension makes a start at linking
-- [[bracketed wiki links]]. This lua filter finishes the job and tries to
-- mimic Obsidian's wiki linking, by
-- - hyphen-replacing or dropping problem characters in the uri
-- - adding ".html" to the uri path
-- - preserving the uri fragment if any
-- - lower-casing the uri fragment

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
