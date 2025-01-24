import json
import datetime
import random

def lambda_handler(event, context):
    facts = [
        "Cloud computing allows companies to avoid upfront infrastructure costs.",
        "AWS is the leading cloud provider as of 2025.",
        "Serverless computing reduces the need for managing servers.",
        "Cloud platforms enable global-scale applications.",
        "Hybrid cloud strategies combine public and private clouds."
    ]
    return {
        "statusCode": 200,
        "body": json.dumps({
            "time": datetime.datetime.now(datetime.timezone.utc).isoformat(),
            "fact": random.choice(facts)
        })
    }