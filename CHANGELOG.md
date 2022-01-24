# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2021-01-19
### Added
- Versión inicial de código. Carga inicial del repositorio del alumno (lmachado25).

## [1.0.1] - 2021-01-19
### Added
- Despliegue manual de la aplicación SAM en local
- Pruebas unitarias y de integración en local
- Adecuación de bucket en configuración samconfig.toml
- Desplegar la aplicación con la configuración de samconfig.toml
- Ejecución Pruebas de la API SAM en AWS

## [1.0.2] - 2021-01-20
### Added
- Cambios para aumentar el % de cobertura en las pruebas unitarias

## [1.0.3] - 2021-01-21
### Added
- Se modifica el archivo CHANGELOG.md, agregando un comentario, para generar un cambio en rama develop y verificar este cambio en la rama master al ejecutar el pipeline completo PIPELINE-FULL-CD

## [1.0.4] - 2021-01-23
### Added
- Adecuación en la prueba unitaria test_get_table_todo para aumentar la cobertura
- Cambio en valor de unhealthyThreshold a 80.0 en Jenkinsfile del pipeline de staging

## [2.0.0] - 2021-01-24
### Added
- Se agrega funcionalidad Translate
