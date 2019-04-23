import React from 'react';

const Earth = () => {
  return <div className="earth">
    <div>
        <div>
          <video autoPlay loop muted playsInline>
              <source type="video/mp4" src={window.earthURL} />
          </video>
        </div>
        <div className="earth-links">
        <a href="https://www.uncommongoods.com/blog/2018/video-5-incredible-products-that-help-people-the-planet/">
          <h1>For Earth: 5 Products That Help People &amp; the Planet</h1>
        </a>
        <form action="https://www.uncommongoods.com/blog/2018/video-5-incredible-products-that-help-people-the-planet/">
          <button>watch the video</button>
        </form>
        
        </div>
    </div>
  </div>
};

export default Earth;