$.noConflict();
jQuery(document).ready(function($){
    
    config = {
      title: "Save a life in :60 seconds",
      description: "You can change your donor status without waiting until your ID expires",   
      image: "http://localhost:9292/media/JehPahl.png",
      url: window.location.href,  
      networks: {
        google_plus: {
          enabled: true 
        },
        twitter: {
          enabled: true
        },
        facebook: {
          enabled: true
        },
        pinterest: {
          enabled: true
        },
        email: {
          enabled: true
        }
       }
      }

    new Share(".share-button", config); 
});
