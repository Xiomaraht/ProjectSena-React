import React from 'react';
import './styles/AdmiClinico.css';
import img from "./images/img.jpg"


const DetailCardLg = ({ vet, onClose }) => {
  if (!vet) {
    return null; // Don't render if no vet is selected
  }

  return (
    <section className="detail-card" style={{ display: vet ? 'block' : 'none' }}>
      <div className="edit-icon">
        <span className="material-symbols-outlined">edit</span>
      </div>
      <img src={img}  alt="Foto perfil" className="circle-image-large" />
      <h2 id="vet-name">{vet.name}</h2>
      <p className="nit" id="vet-nit">{vet.nit}</p>
      <p>
        <strong>Administrador:</strong> <span id="vet-admin">{vet.admin}</span>
      </p>
      <p>
        <strong>Correo:</strong> <span id="vet-email">{vet.email}</span>
      </p>
      <p>
        <strong>Teléfono:</strong> <span id="vet-phone">{vet.phone}</span>
      </p>
      <p>
        <strong>Dirección:</strong>{" "}
        <span id="vet-address" dangerouslySetInnerHTML={{ __html: vet.address }}></span>
      </p>
      <p>
        <strong>Estado:</strong> <span id="vet-status">{vet.status}</span>
      </p>
      <hr />
      <p>
        <strong>Fecha de Registro:</strong>{" "}
        <span id="vet-registered">{vet.registered}</span>
      </p>
      <p>
        <strong>Fecha de Suspensión:</strong>{" "}
        <span id="vet-suspend">{vet.suspend}</span>
      </p>
      <div className="close-btn" onClick={onClose}>
        <span className="material-symbols-outlined">close</span>
      </div>
    </section>
  );
};

export default DetailCardLg;