import React, { useState, useMemo } from 'react';
import { VetsDataLg } from './components/VetsDataLg';
import SidebarLg from './components/SidebarLg';
import HeaderAdmiClinicoLg from './components/HeaderAdmiClinicoLg';
import FilterLg from './components/FilterLg';
import TableVetsLg from './components/TableVetsLg';
import PaginacionLg from './components/PaginacionLg';
import AddVetLg from './components/AddVetLg';
import DetailCardLg from './components/DetailCardLg';
import ProfileCreatedLg from './components/ProfileCreatedLg'; // Importar el nuevo componente


const AdmiClinicoVetLg = () => {
  const [selectedVet, setSelectedVet] = useState(null);
  const [filterStatus, setFilterStatus] = useState('Todos');
  const [currentPage, setCurrentPage] = useState(1);
  const [showAddVetForm, setShowAddVetForm] = useState(false);
  const [showProfileCreated, setShowProfileCreated] = useState(false); // Nuevo estado
  const [newlyCreatedVet, setNewlyCreatedVet] = useState(null); // Nuevo estado para datos de la vet
  const itemsPerPage = 8;

  const filteredVets = useMemo(() => {
    if (filterStatus === 'Todos') {
      return VetsDataLg;
    } else {
      return VetsDataLg.filter(vet => vet.status === filterStatus);
    }
  }, [filterStatus]);

  const totalPages = Math.ceil(filteredVets.length / itemsPerPage);

  const currentVets = useMemo(() => {
    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    return filteredVets.slice(startIndex, endIndex);
  }, [currentPage, filteredVets, itemsPerPage]);

  const showDetail = (index) => {
    const globalIndex = ((currentPage - 1) * itemsPerPage) + index;
    setSelectedVet(filteredVets[globalIndex]);
    setShowAddVetForm(false);
    setShowProfileCreated(false); // Ocultar mensaje de éxito si se muestra detalle
  };

  const hideDetail = () => {
    setSelectedVet(null);
  };

  const handleFilterChange = (status) => {
    setFilterStatus(status);
    setCurrentPage(1);
    setSelectedVet(null);
    setShowAddVetForm(false);
    setShowProfileCreated(false); // Ocultar mensaje de éxito al filtrar
  };

  const handlePageChange = (page) => {
    setCurrentPage(page);
    setSelectedVet(null);
    setShowAddVetForm(false);
    setShowProfileCreated(false); // Ocultar mensaje de éxito al cambiar de página
  };

  const handleShowAddVetForm = () => {
    setShowAddVetForm(true);
    setSelectedVet(null);
    setShowProfileCreated(false); // Ocultar mensaje de éxito si se abre el formulario
  };

  const handleHideAddVetForm = () => {
    setShowAddVetForm(false);
  };

  // Función para manejar el éxito de la creación del perfil
  const handleProfileCreatedDone = () => {
      setShowProfileCreated(false); // Oculta la pantalla de éxito
      setShowAddVetForm(false); // Asegura que el formulario también esté oculto
      setSelectedVet(null); // Asegura que la tarjeta de detalles esté oculta
      setCurrentPage(1); // Opcional: regresa a la primera página de la tabla
  };

  // Función para agregar una nueva veterinaria (ahora con redirección al mensaje de éxito)
  const handleAddVet = (newVetData) => {
    console.log("Nueva veterinaria a agregar:", newVetData);
    // Simular el ID y estado, en un caso real vendría de la API
    const simulatedVet = {
        ...newVetData,
        id: Date.now(), // Un ID simple basado en timestamp
        status: 'Pendiente', // El estado por defecto para una veterinaria recién creada
        registered: new Date().toLocaleDateString('es-CO'), // Fecha de registro actual
        suspend: 'N/A' // Por ahora, sin fecha de suspensión
    };
    
    // **Importante:** Aquí deberías actualizar tu VetsDataLg o el estado global de veterinarias.
    // Para este mockup, simplemente lo pasamos al componente ProfileCreatedLg.
    setNewlyCreatedVet(simulatedVet); // Guarda los datos para mostrarlos en la pantalla de éxito
    setShowAddVetForm(false); // Oculta el formulario
    setShowProfileCreated(true); // Muestra la pantalla de éxito
  };

  return (
    <div className="container">
      <SidebarLg />
      <main className="main-content">
        <HeaderAdmiClinicoLg />
        {/* Renderizado condicional: Formulario, Mensaje de Éxito o Contenido Principal */}
        {showAddVetForm ? (
          <AddVetLg onRegresar={handleHideAddVetForm} onAddVet={handleAddVet} />
        ) : showProfileCreated && newlyCreatedVet ? ( // Mostrar ProfileCreatedLg si está activo
          <ProfileCreatedLg vet={newlyCreatedVet} onRegresar={handleProfileCreatedDone} />
        ) : (
          <>
            <FilterLg onFilterChange={handleFilterChange} />
            <TableVetsLg vets={currentVets} onRowClick={showDetail} />
            <PaginacionLg
              currentPage={currentPage}
              totalPages={totalPages}
              onPageChange={handlePageChange}
            />
            <div className="add-btn-container">
              <button className="add-btn" onClick={handleShowAddVetForm}>
                <span className="material-symbols-outlined">add_circle</span>Agregar Veterinaria
              </button>
            </div>
          </>
        )}
      </main>
      {selectedVet && !showAddVetForm && !showProfileCreated && ( // Solo mostrar DetailCard si nada más está visible
        <DetailCardLg vet={selectedVet} onClose={hideDetail} />
      )}
    </div>
  );
};

export default AdmiClinicoVetLg;