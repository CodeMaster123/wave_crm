$(document).ready(function() {

    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    $('#calendar').fullCalendar({
        editable: true,
        header: {
            left: '',
        center: 'prev,title,next',
        right: 'month,agendaWeek,agendaDay,today'
        },
        buttonText:{
            today:'Today'
        },
        defaultView: 'month',
        height: 500,
        slotMinutes: 15,

        loading: function(bool){
            if (bool) 
        $('#loading').show();
            else 
        $('#loading').hide();
        },

        // a future calendar might have many sources.        
        eventSources: [{
            url: '/events',
            textColor: 'white',
            ignoreTimezone: false
        }],

        timeFormat: 'h:mm t{ - h:mm t} ',
        dragOpacity: "0.5",

        //http://arshaw.com/fullcalendar/docs/event_ui/eventDrop/
        eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc){
            updateEvent(event);
        },

        // http://arshaw.com/fullcalendar/docs/event_ui/eventResize/
        eventResize: function(event, dayDelta, minuteDelta, revertFunc){
            updateEvent(event);
        },

        // http://arshaw.com/fullcalendar/docs/mouse/eventClick/
        eventClick: function(event, jsEvent, view){
            // would like a lightbox here.
        },
    });
    $(".fc-button-effect").remove();
    console.log("asdf")
        $(".fc-button-next .fc-button-content").html("<i class='icon-chevron-right'></i>");
    $(".fc-button-prev .fc-button-content").html("<i class='icon-chevron-left'></i>");
    $(".fc-button-today").addClass('fc-corner-right');
    $(".fc-button-prev").addClass('fc-corner-left');
});



function updateEvent(the_event) {
    $.update(
            "/events/" + the_event.id,
            { event: { title: the_event.title,
                         starts_at: "" + the_event.start,
        ends_at: "" + the_event.end,
        description: the_event.description
                     }
            },
            function (reponse) { alert('successfully updated task.'); }
            );
};
