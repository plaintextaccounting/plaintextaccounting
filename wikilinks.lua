-- Pandoc's wikilinks_title_after_pipe extension does basic hyperlinking
-- of [[bracketed wiki links]]. This lua filter does the rest, mimicking
-- Obsidian's wiki linking where possible. It
-- - replaces spaces with hyphens in the uri path and fragment
-- - lower-cases the fragment
-- - adds ".html" to the path (preserving any fragment).
--   This is needed when the site is rendered locally, though not on hledger.org.
-- Limitations: unlike Obsidian wikilinks,
-- - these do not find files across folders - correct path is required
-- - these are not aware of file existence - targets should exist

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
