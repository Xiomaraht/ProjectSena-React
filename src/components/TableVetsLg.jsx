import React from 'react';
import './styles/AdmiClinico.css';


const TableVetsLg = ({ vets, onRowClick }) => {
  return (
    <table id="vet-table">
      <thead>
        <tr>
          <th></th>
          <th>Veterinaria</th>
          <th>Administrador</th>
          <th>Estado</th>
        </tr>
      </thead>
      <tbody>
        {vets.length > 0 ? ( // Verifica si hay veterinarias para mostrar
          vets.map((vet, index) => (
            <tr key={index} onClick={() => onRowClick(index)}>
              <td>
                <input type="radio" name="vet" />
              </td>
              <td>{vet.name}</td>
              <td>{vet.admin}</td>
              <td>{vet.status}</td>
            </tr>
          ))
        ) : (
          <tr>
            <td colSpan="4" style={{ textAlign: 'center' }}>No hay veterinarias que coincidan con el filtro.</td>
          </tr>
        )}
      </tbody>
    </table>
  );
};

export default TableVetsLg;