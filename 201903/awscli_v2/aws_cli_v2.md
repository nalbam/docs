# AWS CLI v2

## version 1.x

```
aws ec2 describe-regions
aws ec2 describe-regions --output table
aws ec2 describe-regions --query Regions[].RegionName
```

## Interactive Uasge

## aws configure import

```
aws configure import --csv file://~/Downloads/credentials.csv
```

## aws configure wizard

```
aws configure wizard
```

## High Level Commands

### aws dynamodb

```
aws s3 cp assets/sample.jpg s3://media-query-mediabucket-12f8n0bnpykrm/sample.jpg --acl public-read
aws s3 cp assets/sample_%.jpg s3://media-query-mediabucket-12f8n0bnpykrm/sample_%.jpg --acl public-read
```

### aws logs tail

```bash
aws logs tail /aws/lambda/media-query-dev-handle_object_created
aws logs tail /aws/lambda/media-query-dev-handle_object_created --follow
```

### aws ddb

```
aws ddb select media-query-MediaTable-2Q8GUS6UGOWL
aws ddb select media-query-MediaTable-2Q8GUS6UGOWL --key-condition 'name = "sample_%.jpg"'

aws ddb select media-query-MediaTable-2Q8GUS6UGOWL --filter 'contains(name, "%")' --query Items > /tmp/Items.yaml

aws ddb put media-query-MediaTable-2Q8GUS6UGOWL file:///tmp/Items.yaml

aws ddb put media-query-MediaTable-2Q8GUS6UGOWL - < /tmp/Items.yaml
```

## ref

* <https://www.youtube.com/watch?v=i4Prnei87ao>
* <https://github.com/aws-samples/chalice-workshop/blob/master/docs/source/media-query/index.rst>
