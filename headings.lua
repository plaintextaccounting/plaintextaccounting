-- Make all headings (except the page h1 added by page.tmpl)
-- clickable links to themselves, for easy bookmarking/linking.

function Header(el)
   el.content = pandoc.Link(el.content, '#' .. el.identifier)
   return el
end
