// Auto-collapse the mobile nav menu once a tab link is clicked.
//
// Bootstrap's collapse plugin (what powers the hamburger menu) only
// opens and closes in response to clicks on the toggle button itself
// -- clicking a link *inside* the menu doesn't tell it to close, so
// without this it just stays open until the hamburger is tapped again.
//
// $(document).on('click', selector, handler) attaches the handler to
// the whole page rather than to the links directly, so it still works
// on tabs that get added or re-rendered later (delegated event
// binding) rather than only the ones that existed when the page
// first loaded.
$(document).on('click', '.navbar-nav a', function() {
  $('.navbar-collapse').collapse('hide');
});
