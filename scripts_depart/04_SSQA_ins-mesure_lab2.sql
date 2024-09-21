/*
-- =========================================================================== A
-- SSQA_ins_mesure_Test10.sql
-- ---------------------------------------------------------------------------
Activité : IFT187_2022-3
Encodage : UTF-8, sans BOM; fin de ligne Unix (LF)
Plateforme : PostgreSQL 12 à 15
Responsable : Luc.Lavoie@USherbrooke.ca
Version : 0.2.0b (d'après AirEstrie de Christina Khnaisser)
Statut : en vigueur
Résumé : Insertion des données de test pour la table mesure du schéma SSQA.
-- =========================================================================== A
*/

/*
Insertion des données valides à des fins de tests unitaires pour la table Mesure
du schéma SSQA (système de surveillance de la qualité de l'air). Les données
ne sont pas nécessairement conformes à la réalité, bien que représentatives.

Des données pour les autres tables du schéma sont disponibles dans SSQA_ins-val.sql.
Elles doivent être insérées au préalable.

Insertion de données pour tester la requête 10.
*/

-- Localisation du schéma
set schema 'SSQA';

-- Mesure
insert into Mesure values
  ('10000', '2020-01-01 00:00:00.000000', 'SO2', 60, true),
  ('10000', '2020-01-01 01:00:00.000000', 'SO2', 70, true),
  ('10000', '2020-01-01 02:00:00.000000', 'SO2', 80, true), -- dep
  ('10000', '2020-01-01 03:00:00.000000', 'SO2', 70, true),
  ('10000', '2020-01-01 04:00:00.000000', 'SO2', 80, true), -- dep
  ('10000', '2020-01-01 05:00:00.000000', 'SO2', 50, true),
  ('10000', '2020-01-01 01:00:00.000000', 'PM25', 30, true), -- dep
  ('10000', '2020-01-01 02:00:00.000000', 'PM25', 35, true), -- dep
  ('10000', '2020-01-01 03:00:00.000000', 'PM25', 20, true),
  ('10000', '2020-01-01 04:00:00.000000', 'PM25', 10, true),
  ('10000', '2020-01-01 05:00:00.000000', 'PM25', 200, true); -- dep
  -- un seul dépassement commun :  moment='2020-01-01 02:00:00.000000'

insert into Mesure values
  ('10000', '2020-01-02 00:00:00.000000', 'SO2', 80, true),  -- dep
  ('10000', '2020-01-02 02:00:00.000000', 'PM25', 35, true); -- dep
  -- deux jours de dépassement commun : 2020-01-01 et 2020-01-02 (mais pas en même temps)

/*
-- =========================================================================== Z
Contributeurs :
  (LL01) Luc.Lavoie@USherbrooke.ca
  (CK01) Christina.Khnaisser@USherbrooke.ca

Adresse, droits d'auteur et copyright :
  Groupe Metis
  Département d'informatique
  Faculté des sciences
  Université de Sherbrooke
  Sherbrooke (Québec)  J1K 2R1
  Canada
  http://info.usherbrooke.ca/llavoie/
  [CC-BY-NC-4.0 (http://creativecommons.org/licenses/by-nc/4.0)]

Tâches projetées :
  NIL

Tâches réalisées :
  2022-11-24 (LL01) : Création initiale.

Références :
  [IMEI] https://fr.wikipedia.org/wiki/International_Mobile_Equipment_Identity
  [WGS84] http://spatialreference.org/ref/epsg/wgs-84/
  [Maps.ie] https://www.maps.ie/coordinates.html
  [Gouv-ca]
  Mesures polluants
    Programme de surveillance national de la pollution atmosphérique (SNPA)
	  http://data.ec.gc.ca/data/air/monitor/national-air-pollution-surveillance-naps-program/Data-Donnees/?lang=fr
  Mesure Météo
    Conditions météorologiques et climatiques passées - Données historiques
    https://climat.meteo.gc.ca/historical_data/search_historic_data_f.html
-- =========================================================================== Z
*/

