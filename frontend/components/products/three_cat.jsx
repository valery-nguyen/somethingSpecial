import React from 'react';
import { Link } from 'react-router-dom';

export const TopThreeCategories = () => (
  <div className="home-three-cat">
    <div>
      <Link to="/category/home"><img src={window.firstCatImgURL} /></Link>
      <div>
        <Link to="/category/home"><h2>Gifts for Mom</h2></Link>
        <Link to="/category/home"><h3>touch her heart</h3></Link>
      </div>
    </div>
    <div>
      <Link to="/category/home"><img src={window.secondCatImgURL} /></Link>
      <div>
        <Link to="/category/home"><h2>Home Gifts</h2></Link>
        <Link to="/category/home"><h3>new &amp; faves</h3></Link>
      </div>
    </div>
    <div>
      <Link to="/category/kitchen"><img src={window.thirdCatImgURL} /></Link>
      <div>
        <Link to="/category/kitchen"><h2>Kitchen Gifts</h2></Link>
        <Link to="/category/kitchen"><h3>smart and sweet</h3></Link>
      </div>
    </div>
  </div>
);

export const BottomThreeCategories = () => (
  <div className="home-three-cat-2">
    <div>
      <Link to="/construction">
        <img src={window.fourthCatImgURL} />
      </Link>
      <div>
        <Link to="/construction">
          <h2>Get Free Shipping!</h2>
        </Link>
        <Link to="/construction">
          <h3>find out why</h3>
        </Link>
      </div>
    </div>
    <div>
      <a href="https://www.uncommongoods.com/blog/2019/video-juju-maker-story" target="_blank">
        <img src={window.fifthCatImgURL} />
      </a>
      <div>
        <a href="https://www.uncommongoods.com/blog/2019/video-juju-maker-story" target="_blank">
          <h2>Mother of Charms</h2>
        </a>
        <a href="https://www.uncommongoods.com/blog/2019/video-juju-maker-story" target="_blank">
          <h3>video: meet casey benjamin</h3>
        </a>
      </div>
    </div>
    <div>
      <a href="https://www.uncommongoods.com/blog/category/gift-guides/" target="_blank">
        <img src={window.sixthCatImgURL} />
      </a>
      <div>
        <a href="https://www.uncommongoods.com/blog/category/gift-guides/" target="_blank">
          <h2>Gift Guide</h2>
        </a>
        <a href="https://www.uncommongoods.com/blog/category/gift-guides/" target="_blank">
          <h3>feel inspired</h3>
        </a>
      </div>
    </div>
  </div>
);