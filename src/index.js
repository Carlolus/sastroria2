const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('¡Funcionando!');
});

app.listen(3000, () => {
    console.log('Servidor corriendo en http://localhost:3000');
});

sequelize.sync({ alter: true })  // Usa alter para evitar pérdida de datos
  .then(() => {
    console.log("📌 Base de datos sincronizada correctamente.");
  })
  .catch((err) => {
    console.error("❌ Error al sincronizar la base de datos:", err);
  });