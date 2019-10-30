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
          regions: [
            {
              start: track.dataset.regionStart,
              end: track.dataset.regionEnd,
              color: 'hsla(400, 100%, 30%, 0.5)'
            }
          ],
          dragSelection: {
              slop: 5
          },
        })
      ]
    });
    if (track.dataset.trackUrl) {
      wave.load(track.dataset.trackUrl);
    }
    wave.getCurrentTime({
      container: `#${track.id}`
    });

    wave.on('region-update-end', (region) => {
      console.log(region);
      const body = { region_start: region.start, region_end: region.end };
      console.log(body)

      const token = document.querySelector('meta[name="csrf-token"]').content;
      const requestId = region.element.parentElement.parentElement.dataset.requestId;
      const url = '/request_timecodes/' + requestId;
      fetch(url, {
          method: "PUT",
          headers: {
            'X-CSRF-Token': token,
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(body)
      })
        .then(response => response.json())
        .then((data) => {
          console.log(data);
        });
    })
  })
})

$(document).ready(function() {
  const sub_tracks = document.querySelectorAll(".waveform-sub");

  sub_tracks.forEach((track) => {
    let wave = WaveSurfer.create({
      container: `#${track.id}`,
      waveColor: 'black',
      progressColor: '#C420C8',
      mediaControls: true,
      backend: 'MediaElement',
      pixelRatio: 1,
      responsive: true,
    });
    if (track.dataset.trackUrl) {
      wave.load(track.dataset.trackUrl);
    }
  });
});






