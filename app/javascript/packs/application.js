import "bootstrap";

import WaveSurfer from 'wavesurfer.js';
import CursorPlugin from "wavesurfer.js/dist/plugin/wavesurfer.cursor.js";
import CursorTimeline from "wavesurfer.js/dist/plugin/wavesurfer.timeline.js";
import CursorRegions from "wavesurfer.js/dist/plugin/wavesurfer.regions.js";


$(document).ready(function() {
  const tracks = document.querySelectorAll(".waveform");

  tracks.forEach((track) => {
    let wave = WaveSurfer.create({
      container: `#${track.id}`,
      waveColor: 'black',
      progressColor: '#C420C8',
      mediaControls: true,
      backend: 'MediaElement',
      pixelRatio: 1,
      responsive: true,

      regionCreated: function() {
      },

      plugins: [
        CursorPlugin.create({
          showTime: true,
          opacity: 1,
          customShowTimeStyle: {
              'background-color': '#000',
              color: '#C420C8',
              padding: '5px',
              'font-size': '15px',
          }
        }),

        CursorTimeline.create({
          container: `#wave_timeline_${track.id}`,
        }),

        CursorRegions.create ({
          loopSelection: true,
          dragSelection: {
              slop: 20
          },
        })
      ]
    });

    if (track.dataset.trackUrl) {
      wave.load(track.dataset.trackUrl);
    }
    // document.querySelectorAll(track)
    wave.getCurrentTime({
      container: `#${track.id}`
    });

    wave.on('region-created', function(region) {
      console.log('region created!!!!');
      console.log(region);
      console.log(region.element.parentElement.parentElement.dataset.requestId)

      const token = document.querySelector('meta[name="csrf-token"]').content

      const requestId = region.element.parentElement.parentElement.dataset.requestId;
      const url = '/request_timecodes/' + requestId
      fetch(url, {
          method: "PUT",
          headers: {
            'X-CSRF-Token': token,
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ region_start: region.start, region_end: region.end })
        })
          .then(response => response.json())
          .then((data) => {
            console.log(data); // Look at local_names.default
          });

      })
      // PATCH REQUEST TO SERVER WITH URL
      // NEEDS TO SEND THE TWO END TIME AND START TIME (FROM REGION OBJECT) IN BODY
    })
  })


