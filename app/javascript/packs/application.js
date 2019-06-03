import "bootstrap";

import WaveSurfer from 'wavesurfer.js';

$(document).ready(function() {
  const tracks = document.querySelectorAll(".waveform");

  tracks.forEach((track) => {
    let wave = WaveSurfer.create({
      container: `#${track.id}`,
      waveColor: 'black',
      progressColor: '#C420C8',
      mediaControls: true,
      backend: 'MediaElement'
      // mediaType: 'audio',
      // partialRender: true

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

