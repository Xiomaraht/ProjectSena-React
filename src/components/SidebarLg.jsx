import React from 'react';
import './styles/AdmiClinico.css';
import img from "./images/img.jpg"


const SidebarLg = () => {
  return (
    <aside className="sidebar">
      <img src={img} alt="Avatar" className="circle-image" />
      <nav>
        <ul>
          <li className="active">
            <span className="material-symbols-outlined">pets</span>Veterinarias
          </li>
          <li>
            <span className="material-symbols-outlined">group</span>Usuarios
          </li>
          <li>
            <span className="material-symbols-outlined">request_page</span>Reportes
          </li>
        </ul>
      </nav>
    </aside>
  );
};

export default SidebarLg;