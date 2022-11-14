""" http_trigger : Azure function endpoint """

import logging
import azure.functions as func
import pandas as pd


def main(req: func.HttpRequest) -> func.HttpResponse:
    """ Main programm """

    logging.info('Python HTTP trigger function processed a request.')

    ssss: str = 'RRR'

    notes = {
        "Mathématiques": 19,
        "Français": 12,
        "Dessin": 15
    }
    ser = pd.Series(notes, index=["Mathématiques", "Français", "Sciences Physiques", "Dessin"])
    print(str(ser))

    name = req.params.get('name')
    if not name:
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            name = req_body.get('name')

    if name:
        return func.HttpResponse(f"Hello, {name}. This HTTP triggered function executed successfully.")
    else:
        return func.HttpResponse("This HTTP triggered function executed successfully.", status_code=200)
