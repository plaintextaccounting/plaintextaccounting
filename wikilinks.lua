-- Pandoc's wikilinks_title_after_pipe extension does basic hyperlinking
-- of [[bracketed wiki links]]. This lua filter does the rest, mimicking
-- Obsidian's wiki linking where possible. It makes these adjustments
-- (to both path and fragment):
-- - removes problem characters: ' ?
-- - then removes any leading/trailing spaces
-- - replaces internal spaces with hyphens
-- - lower-cases the fragment if any
-- - adds ".html" to the path when appropriate, while preserving the fragment.
--   This is not needed on hledger.org, but makes links work when rendered locally.
--
-- Current limitations: unlike Obsidian wikilinks,
-- - these do not find files across folders - correct path is required
-- - these are not aware of file existence - targets should exist
-- - these are not case insensitive - link and filename case must match exactly

function Link(el)
   if el.title == "wikilink" then
      t = el.target
      t = t:gsub("[?']", "")
      t = t:gsub("^ +", "")
      t = t:gsub(" +$", "")
      t = t:gsub(" ", "-")
      t = t .. "#"
      path, frag = t:match("([^#]*)#([^#]*)")
      u = path
      if not (
         path:len() == 0 or
         path:match('%.html$') or
         path:match('%.%.$') or
         path:match('/$')
      ) then
         u = u .. ".html"
      end
      if frag:len() > 0 then
         frag = pandoc.text.lower(frag)
         u = u .. "#" .. frag
      end
      el.target = u
   end
   return el
end
