
-- CREACIÓN DE VISTA V_TOTAL_CREDITOS_CLIENTE

CREATE OR REPLACE VIEW V_TOTAL_CREDITOS_CLIENTE AS
SELECT sc.numrun || '-' || sc.dvrun "RUN CLIENTE",
       INITCAP(sc.pnombre || ' ' || sc.snombre || ' ' || sc.appaterno || ' ' || sc.appaterno) "NOMBRE CLIENTE",
       COUNT(scc.nro_cliente) "CREDITOS SOLICITADOS"
FROM syn_clie sc JOIN syn_cred_clie scc
ON (scc.nro_cliente = sc.nro_cliente)
GROUP BY sc.numrun, sc.dvrun,sc.pnombre,sc.snombre,sc.appaterno,sc.appaterno
ORDER BY sc.appaterno;