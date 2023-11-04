import json

def lambda_handler(event: dict, context: object):
    print(json.dumps(event))
    print(context)
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
