from iop import BusinessProcess,Utils
import iris

class BP(BusinessProcess):
    def on_init(self):
        self.log_to_console = True
    def on_iris_ens_stringrequest(self, request: 'iris.Ens.StringRequest'):
        ref = iris.ref(None)
        Utils.raise_on_error(iris.cls('Python.LegacyToPython').Transform(request, ref))
        msg = ref.value
        return self.send_request_sync('Python.BO', msg)
