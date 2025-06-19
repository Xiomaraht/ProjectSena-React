import React, { useState, useEffect, useRef } from 'react';
import './styles/AdmiClinico.css';

const FilterLg = ({ onFilterChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const dropdownRef = useRef(null);

  const toggleFilter = () => {
    setIsOpen(!isOpen);
  };

  const handleFilterClick = (status) => {
    onFilterChange(status);
    setIsOpen(false);
  };

  // Close dropdown if clicked outside
  useEffect(() => {
    const handleClickOutside = (event) => {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target)) {
        setIsOpen(false);
      }
    };
    document.addEventListener("mousedown", handleClickOutside);
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, []);

  return (
    <div className="filter-section" ref={dropdownRef}>
      <button className="filter-btn" onClick={toggleFilter}>
        Filtrar ▼
      </button>
      <ul className="dropdown" style={{ display: isOpen ? 'block' : 'none' }}>
        <li onClick={() => handleFilterClick('Todos')}>Todos</li>
        <li onClick={() => handleFilterClick('Activo')}>Activo</li>
        <li onClick={() => handleFilterClick('Cancelado')}>Cancelado</li>
        <li onClick={() => handleFilterClick('Suspendido')}>Suspendido</li>
        <li onClick={() => handleFilterClick('Pendiente')}>Pendiente</li>
      </ul>
    </div>
  );
};

export default FilterLg;