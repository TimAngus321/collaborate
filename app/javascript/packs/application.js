import "bootstrap";


import WaveSurfer from 'wavesurfer.js';




const tracks = document.querySelectorAll(".waveform");

tracks.forEach((track) => {
  let wave = WaveSurfer.create({
    container: `#${track.id}`,
    waveColor: 'white',
    progressColor: '#D1D1D1',
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
      wave.params.container.style.opacity = 0.9;
  });
})

