
$(document).on( "page:change", function( ) {
    $(".rateStar").hover( function( ) {
        var hovered_on = this;
        $( ".rateStar").each( function( index, object ) {
           if( object.id < hovered_on.id ) {
               $( "#" + object.id ).css( "color", "orange" );
           }
           else {
               $( "#" + object.id ).css( "color", "black" );
           }
        });
    });
    $(".rateStar").mouseleave( function( ) {
        $( ".rateStar").each( function( index, object ) {
            $( "#" + object.id ).css( "color", "black" );
        });
    });
});