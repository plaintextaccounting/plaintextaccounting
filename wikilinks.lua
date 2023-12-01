-- Pandoc's wikilinks_title_after_pipe extension does basic hyperlinking
-- of [[bracketed wiki links]]. This lua filter does the rest, mimicking
-- Obsidian's wiki linking where possible. It
-- - replaces spaces with hyphens in the uri path and fragment
-- - lower-cases the fragment
-- - adds ".html" to the path when appropriate (preserving any fragment).
--   This is not needed on hledger.org, but makes links work when rendered locally.
-- Limitations: unlike Obsidian wikilinks,
-- - these do not find files across folders - correct path is required
-- - these are not aware of file existence - targets should exist

function Link(el)
   if el.title == "wikilink" then
      t = el.target .. "#"
      t = t:gsub(" ", "-")
      -- t = t:gsub(t, "'", "")
      path, frag = t:match("([^#]*)#([^#]*)")
      t = path
      if path:len() > 0 and not (
         path:match('%.html$') or
         path:match('%.%.$') or
         path:match('/$')
      ) then
         t = t .. ".html"
      end
      if string.len(frag) > 0 then
         frag = pandoc.text.lower(frag)
         t = t .. "#" .. frag
      end
      el.target = t
   end
   return el
end
