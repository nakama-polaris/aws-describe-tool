"""
awscribe.py
"""

import os
import boto3

def list_stack_resources(stack_name: str) -> dict:
    """
    List stack resources

    :type stack_name: str
    :param stack_name: Name of stack
    """

    cfn_client = boto3.client(
        "cloudformation",
        region_name="ap-northeast-1",
        aws_access_key_id=os.environ.get("AWS_ACCESS_KEY_ID"),
        aws_secret_access_key=os.environ.get("AWS_SECRET_ACCESS_KEY"),
        aws_session_token=os.environ.get("AWS_SESSION_TOKEN")
    )
    return cfn_client.list_stack_resources(StackName=stack_name)