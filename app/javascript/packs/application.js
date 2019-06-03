import "bootstrap";

import WaveSurfer from 'wavesurfer.js';
import CursorPlugin from "wavesurfer.js/dist/plugin/wavesurfer.cursor.js";

$(document).ready(function() {
  const tracks = document.querySelectorAll(".waveform");

  tracks.forEach((track) => {
    let wave = WaveSurfer.create({
      container: `#${track.id}`,
      waveColor: 'black',
      progressColor: '#C420C8',
      mediaControls: true,
      backend: 'MediaElement',
      // rtl: true,
      // mediaType: 'audio',
      // partialRender: true
      // splitChannels: true

      plugins: [
        CursorPlugin.create({
          showTime: true,
          opacity: 1,
          customShowTimeStyle: {
              'background-color': '#000',
              color: '#fff',
              padding: '2px',
              'font-size': '10px'
          }
        })
      ]

    });
    wave.load(track.dataset.trackUrl);
    // document.querySelectorAll(track)
    wave.getCurrentTime({
      container: `#${track.id}`
    });

    wave.on('pause', function () {
      var containerId = wave.params.container;
      var container = document.getElementById(containerId);
      if (container) {
        container.style.opacity = 0.9;
      }
    });
  })
})

