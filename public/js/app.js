$.noConflict();
jQuery(document).ready(function($){
    new Share(".share-button", {
      networks: {
        facebook: {
        app_id: "abc123"
        }
      }
    });
});
