import React from 'react';
import './styles/AdmiClinico.css';

const HeaderAdmiClinicoLg = () => {
  return (
    <div className="header">
      <span className="material-symbols-outlined bell">notifications_off</span>
      <input type="text" placeholder="Buscar..." className="search-box" />
    </div>
  );
};

export default HeaderAdmiClinicoLg;