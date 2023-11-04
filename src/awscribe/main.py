import awscribe

def main():
    loggroup = awscribe.list_stack_resources("nfr-poc-cicd0001-sample-loggroup-stack")
    print(loggroup)

if __name__ == '__main__':
    main()