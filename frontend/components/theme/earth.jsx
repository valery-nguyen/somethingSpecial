import React from 'react';

const Earth = () => {
  return <div className="earth">
    <div>
        <div>
          <video autoPlay loop muted>
              <source type="video/mp4" src={window.earthURL} />
          </video>
        </div>
        <div className="earth-links">
          <a href=""><h1>For Earth: 5 Products That Help People &amp; the Planet</h1></a>
          <button>watch the video</button>
        </div>
    </div>
  </div>
};

export default Earth;