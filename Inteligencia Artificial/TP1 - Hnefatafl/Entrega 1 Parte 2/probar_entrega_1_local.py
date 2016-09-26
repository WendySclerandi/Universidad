# coding: utf-8
from datetime import datetime
import inspect
import os
import sys



problemas = []
recomendaciones = []
advertencias = []


def validar_tiempo(inicio, fin, tope, listado, mensaje):
    diferencia = (fin - inicio).total_seconds()
    if diferencia > tope:
        listado.append(mensaje)


def probar_codigo(interactivo=False, saltear_errores=False):
    # dependencias
    try:
        from simpleai.search.models import SearchNode
    except ImportError:
        problemas.append(u'No se pudo importar SimpleAI. Se encuentra instalado?')
        return

    # intentar importar la entrega
    print u'Importando la entrega...'

    try:
        inicio = datetime.now()
        import entrega_1_local
        fin = datetime.now()
    except ImportError:
        problemas.append(u'No se pudo encontrar el c�digo python. Probablemente el nombre del archivo .py no es correcto, o no est� en la raiz del repositorio.')
        return

    validar_tiempo(inicio, fin, 5, problemas, u'El import de la entrega demora demasiado tiempo, probablemente est�n haciendo b�squeda en el import. Hagan lo del if __name__ ... que se recomienda en la consigna.')

    # intentar extraer y validar la funcion resolver
    print u'Extrayendo la funci�n resolver...'

    resolver = getattr(entrega_1_local, 'resolver', None)

    if resolver is None:
        problemas.append(u'El m�dulo python no define la funci�n resolver.')
        return

    if inspect.getargspec(resolver)[0] != ['metodo_busqueda', 'iteraciones', 'haz', 'reinicios']:
        print resolver.__code__.co_varnames
        problemas.append(u'La funci�n resolver no recibe los par�metros definidos en la entrega.')
        return

    # validar el funcionamiento de la funcion resolver y el planteo del problema en general
    print u'Probando la resoluci�n de problemas...'

    # metodo_busqueda, posicion_rey, graph_search, limite_largo_camino, limite_tiempo
    pruebas = (
        ('hill_climbing', dict(iteraciones=100)),
        ('hill_climbing_stochastic', dict(iteraciones=100)),
        ('beam', dict(iteraciones=100, haz=50)),
        ('hill_climbing_random_restarts', dict(iteraciones=100, reinicios=50)),
        ('simulated_annealing', dict(iteraciones=100)),
    )

    parametros_default = dict(reinicios=None, haz=None)

    for numero_prueba, (metodo_busqueda, parametros_pisados) in enumerate(pruebas):
        parametros = parametros_default.copy()
        parametros.update(parametros_pisados)

        print u'  Prueba', numero_prueba, ':', \
              metodo_busqueda, \
              u'con parametros', parametros

        if not interactivo or raw_input('ejecutar? (Y/n)').strip() in ('y', ''):
            try:
                inicio = datetime.now()
                resultado = resolver(metodo_busqueda=metodo_busqueda,
                                     **parametros)
                fin = datetime.now()

                if not isinstance(resultado, SearchNode):
                    problemas.append(u'El resultado devuelto por la funci�n resolver en la prueba %i no es un nodo de b�squeda. Puede que la funci�n resolver no est� devolviendo el nodo resultante, o que el problema no est� encontrando soluci�n como deber�a.' % numero_prueba)
                else:
                    print u'     meta:', repr(resultado.state)
                    print u'     valor:', repr(resultado.value)
            except Exception as err:
                if saltear_errores:
                    problemas.append(u'Error al ejecutar %s (%s)' % (metodo_busqueda, str(err)))
                else:
                    raise


def probar_estadisticas():
    # abrir el archivo de estadisticas
    print u'Abriendo estad�sticas...'

    nombre_archivo = 'entrega_1_local.txt'
    if not os.path.exists(nombre_archivo):
        problemas.append(u'No se pudo encontrar el archivo de estad�sticas. Probablemente el nombre del archivo no es correcto, o no est� en la raiz del repositorio.')
        return

    with open(nombre_archivo) as archivo_stats:
        lineas_stats = archivo_stats.readlines()

    # validar contenidos
    casos = range(1, 6)
    casos_pendientes = casos[:]

    for linea in lineas_stats:
        linea = linea.strip()
        if linea:
            try:
                caso, valor = map(int, linea.split(':'))

                if caso not in casos:
                    problemas.append(u'Caso desconocido en archivo de estad�sticas: %i' % caso)
                elif caso not in casos_pendientes:
                    problemas.append(u'Caso repetido en archivo de estad�sticas: %i' % caso)
                else:
                    print u"   Encontrado caso", caso
                    casos_pendientes.remove(caso)
            except:
                problemas.append(u'La siguiente linea de estad�sticas no respeta el formato definido: %s' % linea)

    if casos_pendientes:
        problemas.append(u'No se incluyeron las estad�sticas de los siguientes casos: %s' % repr(casos_pendientes))


def imprimir_resultados():
    def listar_cosas(titulo, cosas):
        if cosas:
            print titulo + ':'
            for cosa in cosas:
                print '*', cosa

    listar_cosas(u'Problemas que es necesario corregir', problemas)
    listar_cosas(u'Advertencias (cosas que pueden ser un problema, aunque no siempre)', advertencias)
    listar_cosas(u'Recomendaciones', recomendaciones)


if __name__ == '__main__':
    print
    probar_codigo()
    print
    probar_estadisticas()
    print
    print u'Pruebas autom�ticas terminadas!'
    print
    imprimir_resultados()