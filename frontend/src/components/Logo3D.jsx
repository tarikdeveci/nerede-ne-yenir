import React from 'react';
import logo from '../assets/logo.svg';

export default function Logo3D() {
  return (
    <div className="w-32 h-32 mx-auto perspective-500">
      <img
        src={logo}
        alt="NeredeNeYenir Logo 3D"
        className="w-full h-full logo-3d"
      />
    </div>
  );
}
